import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoey_app/models/tasks_list.dart';

class ItemDataBase{
  // firebase instance object
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // fetching items list from firestore and assigning into map
  Stream<List<Tasks>> get getItemsFromDatabase{
    return firestore.collection('items').snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) =>
            Tasks(name: documentSnapshot.data()["itemName"],
                isDone: documentSnapshot.data()['isDone'])).toList(),);
  }
}