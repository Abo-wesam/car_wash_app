import 'package:car_wash_app/model/CarWashModel.dart';
import 'package:car_wash_app/model/CustomerModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Registerservies{

  FirebaseAuth _auth = FirebaseAuth.instance;
  CollectionReference _collectionReference=FirebaseFirestore.instance.collection('Customer');
  CollectionReference _referenceCarWash=FirebaseFirestore.instance.collection('CarWash');
  CreateNewUser(CustomerModel user) async{
    await _collectionReference.doc(user.id).set(user.tojson());
    CreateUserClaims(user.id,'Customer');
    return true;
  }
  CreateNewCarWash(CarWashModel user) async{
    await _referenceCarWash.doc(user.id_cwash).set(user.tojson());
    CreateUserClaims(user.id_cwash,'CareWash');

    return true;
  }
  CreateUserClaims(String id_cwash, String role)async{
  }

}