import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/owner_data.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:bari_vara_project/models/reponse.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';

class RegisterController{

  var isLoading = true.obs;


  void requestToOwnerRegister(Owner owner) async {
    try{
      isLoading(true);
      var response = await ApiService.registerOwner(owner);
      if (response !=null){

        print(response.message);
      }
    }finally{
      isLoading(false);
    }
  }

  void requestToRenterRegister(Renter renter) async {
    try{
      isLoading(true);
      var response = await ApiService.registerRenter(renter);
      if (response !=null){
        print(response.message);
      }
    }finally{
      isLoading(false);
    }
  }

}