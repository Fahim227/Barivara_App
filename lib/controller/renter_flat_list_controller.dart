import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:bari_vara_project/models/renter/renter_flat.dart';
import 'package:get/get.dart';
class RenterFlatListController extends GetxController{

  var isLoading = true.obs;
  List<RenterFlat> flatList = <RenterFlat>[].obs;
  var id;

  RenterFlatListController();

  @override
  void onInit() {
    // TODO: implement onInit
    //fetchFlats();
    super.onInit();
  }


  Future<List<RenterFlat>> fetchFlats(int id) async {
    var flats = await ApiService.getRenterFlats(id);
    try{
      if (flats !=null){
        flatList.assignAll(flats);
        return flats;
      }
    }finally{
      return flats;
      //isLoading(false);
    }
  }


}