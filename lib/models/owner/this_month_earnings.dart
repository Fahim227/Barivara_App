// To parse this JSON data, do
//
//     final thisMonthEarnings = thisMonthEarningsFromJson(jsonString);

import 'dart:convert';

// To parse this JSON data, do
//
//     final thisMonthEarnings = thisMonthEarningsFromJson(jsonString);

import 'dart:convert';

List<ThisMonthEarnings> thisMonthEarningsFromJson(String str){
  print("Checking");
  print("Data Type: ${List<ThisMonthEarnings>.from(json.decode(str).map((x) => ThisMonthEarnings.fromJson(x))).runtimeType}");
  return List<ThisMonthEarnings>.from(json.decode(str).map((x) => ThisMonthEarnings.fromJson(x)));
}

String thisMonthEarningsToJson(List<ThisMonthEarnings> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ThisMonthEarnings {
  ThisMonthEarnings({
    required this.earningId,
    required this.earningMonth,
    required this.earningDate,
    required this.rentOfMonthYear,
    required this.earnedAmount,
    required this.ownerId,
    required this.renterId,
    required this.flatId,
    required this.flatNumber,
    required this.flatRentAmount,
    required this.remainAmount,
    required this.renterName,
  });

  int earningId;
  String earningMonth;
  DateTime earningDate;
  String rentOfMonthYear;
  double earnedAmount;
  int ownerId;
  int renterId;
  int flatId;
  String flatNumber;
  double flatRentAmount;
  double remainAmount;
  String renterName;

  factory ThisMonthEarnings.fromJson(Map<String, dynamic> json){
    try{
      var o = ThisMonthEarnings(
        earningId: json["earning_id"],
        earningMonth: json["earning_month"],
        earningDate: DateTime.parse(json["earning_date"]),
        rentOfMonthYear: json["rent_of_month_year"],
        earnedAmount: json["earned_amount"],
        ownerId: json["owner_id"],
        renterId: json["renter_id"],
        flatId: json["flat_id"],
        flatNumber: json["flat_number"],
        flatRentAmount: json["flat_rent_amount"],
        remainAmount: json["remain_amount"],
        renterName: json["renter_name"],
      );
    }on Exception catch(exception){
      print(exception);
    }
    var obj = ThisMonthEarnings(
      earningId: json["earning_id"],
      earningMonth: json["earning_month"],
      earningDate: DateTime.parse(json["earning_date"]),
      rentOfMonthYear: json["rent_of_month_year"],
      earnedAmount: json["earned_amount"],
      ownerId: json["owner_id"],
      renterId: json["renter_id"],
      flatId: json["flat_id"],
      flatNumber: json["flat_number"],
      flatRentAmount: json["flat_rent_amount"],
      remainAmount: json["remain_amount"],
      renterName: json["renter_name"],
    );
    print("OK fromJson ${obj.flatNumber}");
    print('this is flat number ${json["flat_number"]}');
    print("OK fromJson 3");
    return obj;
  }

  Map<String, dynamic> toJson() => {
    "earning_id": earningId,
    "earning_month": earningMonth,
    "earning_date": "${earningDate.year.toString().padLeft(4, '0')}-${earningDate.month.toString().padLeft(2, '0')}-${earningDate.day.toString().padLeft(2, '0')}",
    "rent_of_month_year": rentOfMonthYear,
    "earned_amount": earnedAmount,
    "owner_id": ownerId,
    "renter_id": renterId,
    "flat_id": flatId,
    "flat_number": flatNumber,
    "flat_rent_amount": flatRentAmount,
    "remain_amount": remainAmount,
    "renter_name": renterName,
  };
}
