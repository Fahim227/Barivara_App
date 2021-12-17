
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/this_month_earnings.dart';
import 'package:get/get.dart';

class ThisMonthEarningsController extends GetxController{


  var isLoading = true.obs;
  List<ThisMonthEarnings> earningList = <ThisMonthEarnings>[].obs;
  var month,id;

  ThisMonthEarningsController({required this.month,required this.id});

  @override
  void onInit() {
    // TODO: implement onInit
    fetchEarnings();
    super.onInit();
  }


  void fetchEarnings() async {
    try{
      isLoading(true);
      var earnings = await ApiService.getThisMonthEarning(month.toString(),id.toString());
      if (earnings !=null){
        earningList.assignAll(earnings);
      }
    }finally{
      isLoading(false);
    }
  }



}