import 'package:flutter/material.dart';

class RenterAddFlats extends StatefulWidget {
  const RenterAddFlats({Key? key}) : super(key: key);

  @override
  _RenterAddFlatsState createState() => _RenterAddFlatsState();
}

class _RenterAddFlatsState extends State<RenterAddFlats> {

  var referalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add RentedFlats'),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: referalController,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: 'Owner Referal ID',
                      hintText: 'Enter Owner Referal ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green.shade500,width: 2.0)
                      )),
                ),
              ),
                ElevatedButton(
                    onPressed: () {print(referalController.text);},
                    child: Text('Get Flats'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green[500],
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
