
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/renter/flat_for_rent.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AddFlatsController extends GetxController{
  var isLoading = true.obs;
  List<FlatListForRent> flatList = <FlatListForRent>[].obs;
  var referal;

  //AddFlatsController({required this.flatList});

  @override
  void onInit() {
    // TODO: implement onInit
    //fetchFlatList();
    super.onInit();
  }

  void fetchFlatList(String referal_id) async {
    try{
      isLoading(true);
      var flats = await ApiService.getFlatsForRent(referal_id);
      if (flats !=null){
        flatList.assignAll(flats);
      }
    }finally{
      isLoading(false);
    }
  }


}