import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:get/get.dart';

class RenterProfileController extends GetxController{
  static late Renter renter;

  Future<Renter> fetchRenterData(int id){

    var response = ApiService.renterProfile(id);
    //print(response);
    if (response!=null){
      //RenterProfileController.renter = response as Renter;
      return response;
    }
    throw("Error to fetch profile");

  }

}