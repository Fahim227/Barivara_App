
import 'package:bari_vara_project/controller/renterListController.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/login.dart';
import 'package:bari_vara_project/screens/classify.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:bari_vara_project/screens/OwnerScreens/flatlist.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
class RenterList extends StatefulWidget {
  final int id;
  const RenterList({Key? key,required this.id}) : super(key: key);

  @override
  _RenterListState createState() => _RenterListState();
}

class _RenterListState extends State<RenterList> {


   late List<Renter> _list; /* = [{"flat Number": 1,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
    {"renter_name": "Fahim","Renter_phone":"12345678910","rented_flat":"5"},
  ];*/
   late RenterListController renterListController;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    renterListController = Get.put(RenterListController(id: widget.id));
  }


  @override
  Widget build(BuildContext context) {
    /*final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);*/

    _list = renterListController.renterList;
    Future.delayed(Duration(seconds: 3), (){
      print(renterListController.renterList);
    });
    print("list ${_list.length}");
    return Scaffold(
      appBar: AppBar(title: Text('Renter List'),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context,int index){
              return sampleListUi(index);
            }),
      ),
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
              Text("Name : ${_list[idx].name}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Phone : ${_list[idx].phone}", style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Flat Number: ${_list[idx].flat_number}",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
