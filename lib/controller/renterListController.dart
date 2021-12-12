
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:get/get.dart';

class RenterListController extends GetxController{
  var isLoading = true.obs;
  List<Renter> renterList = <Renter>[].obs;
  int id;


  RenterListController({required this.id});

  @override
  void onInit() {
    print("onInint");
    // TODO: implement onInit
    fetchRenters(this.id);
    super.onInit();
  }


  void fetchRenters(int id) async {
    print("fetchRenter");
    try{
      isLoading(true);
      var renters = await ApiService.getRenterList(id);
      if (renters !=null){
        print(renters);
        renterList.assignAll(renters);
      }
    }finally{
      isLoading(false);
    }
  }

}