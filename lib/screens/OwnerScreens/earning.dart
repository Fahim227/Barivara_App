import 'package:bari_vara_project/controller/this_month_earnings.dart';
import 'package:bari_vara_project/models/owner/this_month_earnings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class ThisMonthEarning extends StatefulWidget {
  final int id;
  const ThisMonthEarning({Key? key,required this.id}) : super(key: key);

  @override
  _ThisMonthEarningState createState() => _ThisMonthEarningState();
}

class _ThisMonthEarningState extends State<ThisMonthEarning> {


  final List _list = [{"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
  ];
  static  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  late List<ThisMonthEarnings> earnings;
  late ThisMonthEarningsController thisMonthEarningsController;
  late String month;
  double total_earning =0;
  double total_remaining =0;
  String defaultValue = 'Custom broadcast receiver';

  @override
  void initState() {
    super.initState();
    var date = new DateTime.now().toString();
    var dateParse = DateTime.parse(date);
    month = months[dateParse.month.toInt()-1];

    thisMonthEarningsController = Get.put(ThisMonthEarningsController(month: month,id:widget.id));

    for(int i =0;i<_list.length;i++){
      total_earning += _list[i]["earned"];
    }

    for(int i =0;i<_list.length;i++){
      total_remaining += _list[i]["remained"];
    }


  }


  @override
  Widget build(BuildContext context) {
    earnings = thisMonthEarningsController.earningList;
    print("Length ${thisMonthEarningsController.earningList.length}");
    final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);
    return Scaffold(
      appBar: AppBar(title: Text('Income Details'),),
      body: //SingleChildScrollView(
         Column(
          children: [
             Expanded(
               child:Container(
                height: MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width,
                child: Obx((){
                  return  ListView.builder(
                      itemCount: earnings.length,
                      itemBuilder: (BuildContext context,int index){
                        return sampleListUi(index);
                      });
                }),

            ),
             ),
            SizedBox(height: 5,),
            Container(
              child: Card(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Earned: ${total_earning.toStringAsFixed(3)}",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 20,),
                        Text("Total Remaining : ${total_remaining.toStringAsFixed(3)}",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                  )
              )

            )
            /*
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            )*/
          ],
        ),
      //),
    );
  }


  Widget sampleListUi(int idx){
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      child: Card(
        color: Colors.blue[300],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flat Number : ${_list[idx]['flat_number']}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Renting Amount : ${_list[idx]['flat_amount']}", style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Earned: ${_list[idx]['earned']}",style: TextStyle(color: Colors.white,fontSize: 20),),

                  Text("Remain : ${_list[idx]['remained']}",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
