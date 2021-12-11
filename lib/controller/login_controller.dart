


import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/reponse.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LoginController extends GetxController{
  var isLoading = true.obs;
  static var message = '';
  static  var id = null;
  static var response = false;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //requestToLogin(mail, password, type)
  }
  
  
  void requestToLogin(String mail,String password, String type) async {
    //print(mail);
    try{
      isLoading(true);
      var response = await ApiService.login(mail=mail, password=password, type=type);
      if (response !=null){
        if(!response.response){
          //Get.snackbar("Error in Login", response.message);
          LoginController.message = response.message;
          LoginController.response = response.response;
         // print(response.response);
        }
        else{
           LoginController.response = response.response;
           LoginController.message = response.message;
           LoginController.id = response.id;
           print(response.response);
        }
      }
    }finally{
      isLoading(false);
    }
  }


}