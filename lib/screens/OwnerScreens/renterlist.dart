
import 'package:bari_vara_project/controller/renterListController.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:bari_vara_project/screens/OwnerScreens/renter_profile.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/login.dart';
import 'package:bari_vara_project/screens/classify.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:bari_vara_project/screens/OwnerScreens/flatlist.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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

  }


  @override
  Widget build(BuildContext context) {
    renterListController = Get.put(RenterListController());
    /*final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);*/

    _list = renterListController.renterList;
    /*Future.delayed(Duration(seconds: 3), (){
      print(renterListController.renterList);
    });*/
    print("list ${_list.length}");
    return Scaffold(
      appBar: AppBar(title: Text('Renter List'),),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder(
            future: renterListController.fetchRenters(widget.id),
            builder:(BuildContext context,AsyncSnapshot<List<Renter>> snapshot){
              if(snapshot.data == null){
                return    SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              else{
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context,int index){
                      _list = snapshot.data!;
                      return sampleListUi(index);
                    });
              }
            }

          ),
        ),
    );
  }


  Widget sampleListUi(int idx){
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RenterProfile(renter: _list[idx],)),
          );
        },
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber(_list[idx].phone);
                          },
                          icon: Icon(Icons.phone),
                          label: Text('Call'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent,
                              padding: EdgeInsets.symmetric(horizontal:0 , vertical: 10),
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:  15,),
                    Container(
                      //margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.message),
                          label: Text('Message'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent,
                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)
                          ),
                        ),
                      ),
                    )



                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
