import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  CollectionReference _collectionReference=FirebaseFirestore.instance.collection('Customer');
  CollectionReference _referenceCarWash=FirebaseFirestore.instance.collection('CarWash');

  bool isLoggedIn() {
    return _firebaseAuth.currentUser != null;
  }




// IMPLEMENT additional FirebaseAuth methods here.
}