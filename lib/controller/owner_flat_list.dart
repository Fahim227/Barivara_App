import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:get/get.dart';
class OwnerFlatListController extends GetxController{

  List<OwnerFlatList> flatList = <OwnerFlatList>[].obs;
  var id;

  OwnerFlatListController();

  @override
  void onInit() {
    // TODO: implement onInit
    //fetchFlats();
    super.onInit();
  }


  Future<List<OwnerFlatList>> fetchFlats(int id) async {
    var flats = await ApiService.getOwnerFlats(id);
    try{
      if (flats !=null){
        flatList.assignAll(flats);
        return flats;
      }
    }finally{
      return flats;
    }
  }


}