import 'package:bari_vara_project/controller/add_flats_controller.dart';
import 'package:bari_vara_project/models/renter/flat_for_rent.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/RenterScreens/flatdetails.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class RenterAddFlats extends StatefulWidget {
  final int id;
  const RenterAddFlats({Key? key,required this.id}) : super(key: key);

  @override
  _RenterAddFlatsState createState() => _RenterAddFlatsState();
}

class _RenterAddFlatsState extends State<RenterAddFlats> {
  var addFlatsController = Get.put(AddFlatsController());
  var referalController = TextEditingController();

  List<FlatListForRent> _list = [];

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

                            addFlatsController.fetchFlatList(referalController.text);
                            /*Future.delayed(Duration(seconds: 3),(){
                              _list = addFlatsController.flatList;
                              print(_list.length);
                            });*/

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
                child: Obx((){
                  return  ListView.builder(
                      itemCount: addFlatsController.flatList.length,
                      itemBuilder: (BuildContext context,int index){
                        print(addFlatsController.flatList.length);
                        return sampleListUi(index);
                      });
                })
              ),

          ],
        ),
      ),
    );
  }

  void getFlatsList(String referalNumber){
    /*_list = [{"flat Number": 1,"flat_owner":"Hasan","flat_size": "800sqft","flat_renting_price":"10000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"},
      {"flat Number": 5,"flat_owner":"Fahim","flat_size": "100sqft","flat_renting_price":"8000"}

    ];*/
  }

  Widget sampleListUi(int idx){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlatDetails(id: widget.id),
            // Pass the arguments as part of the RouteSettings. The
            // DetailScreen reads the arguments from these settings.
            settings: RouteSettings(
              arguments: addFlatsController.flatList[idx],
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
                Text("Flat Number:   ${addFlatsController.flatList[idx].flatNumber}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Owner:   ${addFlatsController.flatList[idx].owner_name}", style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Size:   ${addFlatsController.flatList[idx].size}",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Renting Price:   ${addFlatsController.flatList[idx].rentAmount}",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }



}
