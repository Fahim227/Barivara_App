// To parse this JSON data, do
//
//     final ownerFlatList = ownerFlatListFromJson(jsonString);

import 'dart:convert';

List<OwnerFlatList> ownerFlatListFromJson(String str) => List<OwnerFlatList>.from(json.decode(str).map((x) => OwnerFlatList.fromJson(x)));

String ownerFlatListToJson(List<OwnerFlatList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OwnerFlatList {
  OwnerFlatList({
    required this.flatId,
    required this.rentAmount,
    required this.size,
    required this.flatNumber,
    required this.flatFloorNumber,
    required this.flatDescription,
    required this.flatAddress,
    required this.flatOwnerId,
    required this.flatRenterId,
  });

  int flatId;
  double rentAmount;
  String size;
  String flatNumber;
  String flatFloorNumber;
  String flatDescription;
  String flatAddress;
  int flatOwnerId;
  int flatRenterId;

  factory OwnerFlatList.fromJson(Map<String, dynamic> json) => OwnerFlatList(
    flatId: json["flat_id"],
    rentAmount: json["rent_amount"],
    size: json["size"],
    flatNumber: json["flat_number"],
    flatFloorNumber: json["flat_floor_number"],
    flatDescription: json["flat_description"],
    flatAddress: json["flat_address"],
    flatOwnerId: json["flat_owner_id"],
    flatRenterId: json["flat_renter_id"],
  );

  Map<String, dynamic> toJson() => {
    "flat_id": flatId,
    "rent_amount": rentAmount,
    "size": size,
    "flat_number": flatNumber,
    "flat_floor_number": flatFloorNumber,
    "flat_description": flatDescription,
    "flat_address": flatAddress,
    "flat_owner_id": flatOwnerId,
    "flat_renter_id": flatRenterId,
  };
}
