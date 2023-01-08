import 'package:car_wash_app/model/CustomerModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Registerservies{
  CollectionReference _collectionReference=FirebaseFirestore.instance.collection('Customer');

  CreateNewUser(CustomerModel user) async{
    await _collectionReference.doc(user.id).set(user.tojson());
    return true;


  }

}