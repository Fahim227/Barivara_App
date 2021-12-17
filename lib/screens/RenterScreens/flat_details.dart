import 'package:bari_vara_project/controller/renter_flat_list_controller.dart';
import 'package:bari_vara_project/models/renter/renter_flat.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'flatdetails.dart';

class Flat_Details extends StatefulWidget {
  const Flat_Details({Key? key}) : super(key: key);

  @override
  _Flat_DetailsState createState() => _Flat_DetailsState();
}

class _Flat_DetailsState extends State<Flat_Details> {

  @override
  Widget build(BuildContext context) {
    final RenterFlat data = ModalRoute.of(context)!.settings.arguments as RenterFlat;

    return Scaffold(
      appBar: AppBar(title: Text('Rented Flat Details'),),
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
              Text('Address : ${data.flatAddress}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Size: ${data.size}sqft', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Floor Number: ${data.flatFloorNumber}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Rent Amount: ${data.rentAmount}Tk ', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),

              Text('Description: ${data.flatDescription}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}

