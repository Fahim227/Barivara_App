
import 'package:bari_vara_project/api_modules/api_services.dart';
import 'package:bari_vara_project/models/owner/this_month_earnings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ThisMonthEarningsController extends GetxController{


  var isLoading = true.obs;
  List<ThisMonthEarnings> earningList = <ThisMonthEarnings>[].obs;
  //var month,id;

  ThisMonthEarningsController();

  @override
  void onInit() {
    // TODO: implement onInit
    //fetchEarnings();
    super.onInit();
  }


  Future<List<ThisMonthEarnings>> fetchEarnings(String month,int id) async {
    var earnings = await ApiService.getThisMonthEarning(month.toString(),id.toString());
    try{
      if (earnings !=null){
        earningList.assignAll(earnings);
        print(earnings.length);
        return earnings;
      }
    }finally{
      return earnings;
    }
  }



}