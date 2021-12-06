import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:get/get.dart';
class OwnerFlatListController extends GetxController{

  var isLoading = true.obs;
  List<OwnerFlatList> flatList = <OwnerFlatList>[].obs;
  var id;

  OwnerFlatListController(this.id);

  @override
  void onInit() {
    // TODO: implement onInit
    fetchFlats(this.id);
    super.onInit();
  }


  void fetchFlats(int id) async {
    try{
      isLoading(true);
      var flats = await ApiService.getOwnerFlats(id);
      if (flats !=null){
        flatList.assignAll(flats);
      }
    }finally{
      isLoading(false);
    }
  }


}