import 'package:bari_vara_project/models/owner/owner_data.dart';
import 'package:bari_vara_project/models/owner/this_month_earnings.dart';
import 'package:bari_vara_project/models/renter/flat_for_rent.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:bari_vara_project/models/renter/renter_flat.dart';
import 'package:bari_vara_project/models/reponse.dart';
import 'package:bari_vara_project/screens/OwnerScreens/earning.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
class ApiService{
  static var client = http.Client();
  static var address = 'http://192.168.0.108:8000/barivara/';

  static Future<List<OwnerFlatList>> getOwnerFlats(int id) async {

    print('jsonString');
    var response = await client.post(
      Uri.parse('${address}ownerFlatList/'),
      body:{
        "id" : id.toString(),
      }
    );
    if (response.statusCode == 200){
      var jsonString = response.body;
      return ownerFlatListFromJson(jsonString);
    }
    return ownerFlatListFromJson(response.body);

  }

  static Future<List<RenterFlat>> getRenterFlats(int id) async {

    print('jsonString');
    var response = await client.post(
        Uri.parse('${address}renter_flats/'),
        body:{
          "id" : id.toString(),
        }
    );
    if (response.statusCode == 200){
      var jsonString = response.body;
      return renterFlatFromJson(jsonString);
    }
    return renterFlatFromJson(response.body);

  }

  static Future<Response> registerOwner(Owner owner) async{

    var response =  await client.post(
      Uri.parse(
          address+'register/owner/'),
      body: owner.toJson()
    );

    if (response.statusCode ==200 || response.statusCode == 400){
      return Response.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Failed to Load Data");
    }

  }


  static Future<Renter> renterProfile(int id) async{

    var response =  await client.post(
        Uri.parse(
            address+'renter_profile/'),
        body: {
          'id': id.toString(),
        }
    );

    if (response.statusCode ==200 || response.statusCode == 400){
      print("Hello");
      print("API Renter data "+jsonDecode(response.body));
      return profileFromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Failed to Load Data");
    }

  }


  static Future<Response> registerRenter(Renter renter) async{

    var response =  await client.post(
        Uri.parse(
            address+'register/renter/'),
        body: renter.toJson()
    );

    if (response.statusCode ==200 || response.statusCode == 400){
      return Response.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Failed to Load Data");
    }



  }

  static Future<Response> login(String mail, String pass,String type) async{

    var response =  await client.post(
        Uri.parse(
            address+'login/$type/'),
        body: {
          "emailOrphone": mail,
          "password" : pass
        }
    );

    if (response.statusCode ==200 || response.statusCode == 400){
      return Response.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Failed to Load Data");
    }

  }
  
  static Future<List<Renter>> getRenterList(int id) async {
    var response = await client.post(
        Uri.parse(address+'renterList/'),
        body: {
          'id':id.toString()
        }
    );
    if(response.statusCode == 200 || response.statusCode == 400){
      print(response.body);
      return renterListFromJson(response.body);
    }
    return renterListFromJson(response.body);

  }

  static Future<List<ThisMonthEarnings>> getThisMonthEarning(String month,String id) async {
    print('getThisMonthEarning');
    var response = await client.post(
        Uri.parse(address+'currentMonthEarning/'),
        body: {
          'month':month.toString(),
          'id': id
        }
    );
    if(response.statusCode == 200 || response.statusCode == 400){
      print(response.body);
      return thisMonthEarningsFromJson(response.body);
    }
    else{
      throw Exception("Failed to Load Data");
    }
  }

  static Future<List<FlatListForRent>> getFlatsForRent(String referal_id) async {

    //print('jsonString');
    var response = await client.post(
        Uri.parse('${address}flats_by_referal/'),
        body:{
          "referal" : referal_id,
        }
    );
    if (response.statusCode == 200){
      var jsonString = response.body;
      return flatListForRentFromJson(jsonString);
    }
    return flatListForRentFromJson(response.body);

  }

  static Future<Response> requestForRent(int flat_id,int renter_id) async {
    var response = await client.post(
        Uri.parse('${address}request_to_rent/'),
        body:{
          "flat_id" : flat_id.toString(),
          "renter_id" : renter_id.toString(),
        }
    );
    if (response.statusCode == 200 || response.statusCode == 400){
      return Response.fromJson(jsonDecode(response.body));
    }
    return  Response.fromJson(jsonDecode(response.body));
  }




}