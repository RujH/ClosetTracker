
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/models/cloth.dart';
import 'package:myapp/models/user.dart';

class DatabaseService{
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference clothCollection = Firestore.instance.collection('clothPhotos');
  Future updateUserData(String type, String size, String color, String brand ) async {
    return await clothCollection.document(uid).setData({
      'clothType': type,
      'size': size,
      'color': color,
      'brand': brand,
    });

  }
  //cloth list from snapshot
  List<Cloth> _clothListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc) {
      return Cloth(
        type : doc.data['type'] ?? '',
        size: doc.data['size'] ?? '',
        color: doc.data['color'] ?? '',
        brand: doc.data['brand'] ?? '',
      );

    }).toList();
  }

  //userData from snapshots
  UserData _userDataFromSnapshot (DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      type : snapshot.data['type'] ,
      size: snapshot.data['size'] ,
      color: snapshot.data['color'],
      brand: snapshot.data['brand']
    );
  }


  //get closets stream
  //notify us of any document changes in our database
  Stream <List<Cloth>> get clothItem {
    return clothCollection.snapshots()
    .map(_clothListFromSnapshot);
  }


  //get user doc stream
  Stream<UserData> get userData{
    return clothCollection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }

}