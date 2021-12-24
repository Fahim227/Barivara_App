import 'package:bari_vara_project/controller/this_month_earnings.dart';
import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:bari_vara_project/models/owner/this_month_earnings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class OwnerFlatDetails extends StatefulWidget {
  const OwnerFlatDetails({Key? key}) : super(key: key);

  @override
  _OwnerFlatDetailsState createState() => _OwnerFlatDetailsState();
}

class _OwnerFlatDetailsState extends State<OwnerFlatDetails> {
  @override
  Widget build(BuildContext context) {
    //final FlatListForRent data = ModalRoute.of(context)!.settings.arguments as FlatListForRent;
    final OwnerFlatList data = ModalRoute.of(context)!.settings.arguments as OwnerFlatList;
    //var data = {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"};
    return Scaffold(
      appBar: AppBar(title: Text('Flat Details'),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20.0,top: 20.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.green.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Flat Number: ${data.flatNumber}', style: TextStyle(color: Colors.black,fontSize: 40),),
              SizedBox(height: 20,),
              Text('Flat Owner: ${data.owner_name}', style: TextStyle(color: Colors.black,fontSize: 30),),
              SizedBox(height: 20,),
              Text('Flat Renter: ${data.flatRenterName}', style: TextStyle(color: Colors.black,fontSize: 30),),
              SizedBox(height: 20,),
              Text('Address : ${data.flatAddress}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Size: ${data.size}sqft', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Floor Number: ${data.flatFloorNumber}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Rent Amount: ${data.rentAmount}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),

              Text('Description:${data.flatDescription}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
