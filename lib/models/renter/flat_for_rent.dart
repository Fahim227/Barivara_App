// To parse this JSON data, do
//
//     final flatListForRent = flatListForRentFromJson(jsonString);

import 'dart:convert';

List<FlatListForRent> flatListForRentFromJson(String str) => List<FlatListForRent>.from(json.decode(str).map((x) => FlatListForRent.fromJson(x)));

String flatListForRentToJson(List<FlatListForRent> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FlatListForRent {
  FlatListForRent({
    required this.flatId,
    required this.rentAmount,
    required this.size,
    required this.flatNumber,
    required this.flatFloorNumber,
    required this.flatDescription,
    required this.flatAddress,
    required this.isRented,
    required this.flatOwnerId,
    required this.owner_name,
    required this.flatRenterId,
    required this.flatRenterName,
  });

  int flatId;
  double rentAmount;
  String size;
  String flatNumber;
  String flatFloorNumber;
  String flatDescription;
  String flatAddress;
  bool isRented;
  int flatOwnerId;
  String owner_name;
  int flatRenterId;
  String flatRenterName;

  factory FlatListForRent.fromJson(Map<String, dynamic> json) => FlatListForRent(
    flatId: json["flat_id"],
    rentAmount: json["rent_amount"],
    size: json["size"],
    flatNumber: json["flat_number"],
    flatFloorNumber: json["flat_floor_number"],
    flatDescription: json["flat_description"],
    flatAddress: json["flat_address"],
    isRented: json["is_rented"],
    flatOwnerId: json["flat_owner_id"],
    owner_name: json["owner_name"],
    flatRenterId: json["flat_renter_id"],
    flatRenterName: json["flat_renter_name"],
  );

  Map<String, dynamic> toJson() => {
    "flat_id": flatId,
    "rent_amount": rentAmount,
    "size": size,
    "flat_number": flatNumber,
    "flat_floor_number": flatFloorNumber,
    "flat_description": flatDescription,
    "flat_address": flatAddress,
    "is_rented": isRented,
    "flat_owner_id": flatOwnerId,
    "owner_name": owner_name,
    "flat_renter_id": flatRenterId,
    "flat_renter_name": flatRenterName,
  };
}
