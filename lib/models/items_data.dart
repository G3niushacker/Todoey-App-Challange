import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ItemData extends ChangeNotifier{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // adding items to firestore
  void addItemsToFirebase(String name){
    firestore.collection('items').doc(name).set({
      'itemName':name,
      'isDone' : false,
    });
    notifyListeners();
  }
  // check box value true by taping this function will call
   void checkListItem(String name){
     firestore.collection('items').doc(name).update({
       'isDone': true,
     });
   }
   // delete the perticular item from firestore
   void dleteItems(String name){
     firestore.collection('items').doc(name).delete();
   }
}