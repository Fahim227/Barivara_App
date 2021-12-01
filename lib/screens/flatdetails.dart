import 'package:flutter/material.dart';


class FlatDetails extends StatefulWidget {
  const FlatDetails({Key? key}) : super(key: key);

  @override
  _FlatDetailsState createState() => _FlatDetailsState();
}

class _FlatDetailsState extends State<FlatDetails> {


  @override
  Widget build(BuildContext context) {
    //final Map<String,Object> data = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    var data = {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"};
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
              Text('Flat Number: ${data['flat Number']}', style: TextStyle(color: Colors.black,fontSize: 40),),
              SizedBox(height: 20,),
              Text('Flat Owner: ${data['flat_owner']}', style: TextStyle(color: Colors.black,fontSize: 30),),
              SizedBox(height: 20,),
              Text('Address : 31/283 Banani ', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Size: ${data['flat_size']}sqft', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Floor Number: ${data['flat Number']}', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),
              Text('Flat Rent Amount: ${data['flat_renting_price']}Tk ', style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 20,),

              Text('Description: ${data['flat Number']}', style: TextStyle(color: Colors.black,fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
