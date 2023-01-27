import 'package:cloud_firestore/cloud_firestore.dart';

class CustomerModel {
  final String? id, FullName, Password, email;

  CustomerModel(
      { this.id,
       this.FullName,
       this.Password,
       this.email});

  factory CustomerModel.fromsnapshot(DocumentSnapshot<Map<String, dynamic>> user) {
    final Data = user.data()!;
    return CustomerModel(
        id: Data['id'],
        FullName: Data['FullName'],
        email: Data['email'],
        Password: Data['Password']);
  }

  tojson() {
    return {
      'id': id,
      'FullName': FullName,
      'email': email,
      'Password': Password
    };
  }
}
