import 'package:cloud_firestore/cloud_firestore.dart';

class CarModel {
  // CarModel ();
  late String? id_car;
  late  String? id_cust;
  final String car_type;
  final String license_plate;
  late String  color_car;

  CarModel(
      { this.id_car,
       this.id_cust,
      required this.car_type,
      required this.color_car,
      required this.license_plate});

  factory CarModel.fromsnapshot(DocumentSnapshot<Map<String, dynamic>> user) {
    final Data = user.data()!;
    return CarModel(
        id_car: Data['id_car'],
        id_cust: Data['id_cust'],
        car_type: Data['car_type'],
        color_car: Data['color_car'],
        license_plate: Data['license_plate']);
  }

  tojson() {
    return {
      'id_car': id_car,
      'id_cust': id_cust,
      'car_type': car_type,
      'color_car': color_car,
      'license_plate': license_plate,
    };
  }
}
