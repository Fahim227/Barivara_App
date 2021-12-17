
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RequestToRentController extends GetxController{
  static var message = '';
  static  var id = null;
  static var response = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //requestToLogin(mail, password, type)
  }


  void requestToRent(int flat_id,int renter_id) async {
    //print(mail);
    try{
      var response = await ApiService.requestForRent(flat_id, renter_id);
      if (response !=null){
        if(!response.response){
          //Get.snackbar("Error in Login", response.message);
          RequestToRentController.message = response.message;
          RequestToRentController.response = response.response;
          // print(response.response);
        }
        else{
          RequestToRentController.response = response.response;
          RequestToRentController.message = response.message;
          RequestToRentController.id = response.id;
          print(response.response);
        }
      }
    }finally{

    }
  }


}