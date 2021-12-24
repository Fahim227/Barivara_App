
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:get/get.dart';

class RenterListController extends GetxController{
  var isLoading = true.obs;
  List<Renter> renterList = <Renter>[].obs;
  //int id;


  RenterListController();

  @override
  void onInit() {
    print("onInint");
    // TODO: implement onInit
    //fetchRenters(this.id);
    super.onInit();
  }


  Future<List<Renter>> fetchRenters(int id) async {
    var renters = await ApiService.getRenterList(id);
    try{
      isLoading(true);
      if (renters !=null){
        print(renters);
        renterList.assignAll(renters);
        return renters;
      }
    }finally{
      return renters;
    }
  }

}