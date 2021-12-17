
import 'dart:convert';

import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';

List<Renter> renterListFromJson(String str) => List<Renter>.from(json.decode(str).map((x) => Renter.fromJson(x)));
Renter profileFromJson(String str) => json.decode(str).map((x) => Renter.fromJson(x));


class Renter{
  late int renter_id;
  late String name;
  late String fathers_name;
  late String birth_date;
  late String permanent_address;
  late String phone;
  late String email;
  late String occupation;
  late String nation_id;
  late String emergency_name;
  late String emergency_phone;
  late String password;
  late String flat_number;


  Renter({
    required this.name,
    required this.fathers_name,
    required this.birth_date,
    required this.permanent_address,
    required this.phone,
    required this.email,
    required this.occupation,
    required this.nation_id,
    required this.emergency_name,
    required this.emergency_phone,
    required this.password,
  });

  Map<String,dynamic> toJson() {
    Map<String,dynamic> mapData= {
      'renter_id':renter_id,
      'name': name,
      'phone': phone,
      'email': email,
      'occupation': occupation,
      'nation_id': nation_id,
      'emergancy_name': emergency_name,
      'emergancy_phone': emergency_phone,
      'permanent_address': permanent_address,
      'birth_date': birth_date,
      'fathers_name': fathers_name,
      'password': password,
      'flat_number': flat_number,
    };
    return mapData;
  }
  Renter.fromJson(Map<String, dynamic> json) {
    renter_id = json['renter_id'];
    name = json['name'];
    fathers_name = json['fathers_name'];
    birth_date = json['birth_date'];
    permanent_address = json['permanent_address'];
    occupation = json['occupation'];
    phone = json['phone'];
    email = json['email'];
    nation_id = json['nation_id'];
    emergency_name = json['emergancy_name'];
    emergency_phone = json['emergancy_phone'];
    password = json['password'];
    flat_number = json['flat_number'];
  }
}