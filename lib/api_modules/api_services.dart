import 'package:bari_vara_project/models/owner/owner_data.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:bari_vara_project/models/reponse.dart';
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

}