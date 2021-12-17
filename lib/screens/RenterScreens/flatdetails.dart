import 'package:bari_vara_project/controller/request_to_rent.dart';
import 'package:bari_vara_project/models/renter/flat_for_rent.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';


class FlatDetails extends StatefulWidget {
  final int id;
  const FlatDetails({Key? key,required this.id}) : super(key: key);

  @override
  _FlatDetailsState createState() => _FlatDetailsState();
}

class _FlatDetailsState extends State<FlatDetails> {
  var request_to_rentController = Get.put(RequestToRentController());

  @override
  Widget build(BuildContext context) {
    final FlatListForRent data = ModalRoute.of(context)!.settings.arguments as FlatListForRent;
    //var data = {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"};
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            child: ClipRRect(
            child: ElevatedButton(
              onPressed: () {
                request_to_rentController.requestToRent( data.flatId, widget.id);
                Future.delayed(Duration(seconds: 2),(){
                  if(RequestToRentController.response == true){
                    // Back to renter home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RenterHomeScreen(id: widget.id),
                        // Pass the arguments as part of the RouteSettings. The
                        // DetailScreen reads the arguments from these settings.

                      ),
                    );
                  }
                  else{
                    print('Error');
                  }
                });

              },
              child: Text("Request to Rent It!"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)
              ),
            ),
          ),),
        ],
      ),
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
