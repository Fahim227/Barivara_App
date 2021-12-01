import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/flatdetails.dart';
class RenterAddFlats extends StatefulWidget {
  const RenterAddFlats({Key? key}) : super(key: key);

  @override
  _RenterAddFlatsState createState() => _RenterAddFlatsState();
}

class _RenterAddFlatsState extends State<RenterAddFlats> {

  var referalController = TextEditingController();

  List _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add RentedFlats'),),
      body: SingleChildScrollView(
        child: Column(
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
                      onPressed: () {
                        setState(() {
                          getFlatsList(referalController.text);
                        });
                        },
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
            ),
            SizedBox(height: 10,),
            Container(
                height: MediaQuery.of(context).size.height*0.74,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context,int index){
                      return sampleListUi(index);
                    },
                    ),
              ),

          ],
        ),
      ),
    );
  }

  void getFlatsList(String referalNumber){
    _list = [{"flat Number": 1,"flat_owner":"Hasan","flat_size": "800sqft","flat_renting_price":"10000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"}

    ];
  }

  Widget sampleListUi(int idx){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlatDetails(),
            // Pass the arguments as part of the RouteSettings. The
            // DetailScreen reads the arguments from these settings.
            settings: RouteSettings(
              arguments: _list[idx],
            ),
          ),
        );
      },
      child: Container(
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
                Text("Flat Number:   ${_list[idx]['flat Number']}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Owner:   ${_list[idx]['flat_owner']}", style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Size:   ${_list[idx]['flat_size']}",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Renting Price:   ${_list[idx]['flat_renting_price']}",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }



}
