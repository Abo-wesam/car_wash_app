import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends GetxService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection('Customer');
  CollectionReference _referenceCarWash =
      FirebaseFirestore.instance.collection('CarWash');

  bool isLoggedIn() {
    return _auth.currentUser != null;
  }


  void CheckForUser(String email) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    CollectionReference custdoc =
        FirebaseFirestore.instance.collection('Customer');
    CollectionReference carwashdoc =
        FirebaseFirestore.instance.collection('CarWash');

    final CustData = await custdoc.where('email', isEqualTo: email).get();


    if (!(CustData.docs.isEmpty)) {
      _pref.setString('roll', 'Customer');
    } else {
      final carwashdata =
          await carwashdoc.where('email_cwash', isEqualTo: email).get();

      _pref.setString('roll', 'CarWash');
    }
  }
}
