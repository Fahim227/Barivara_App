import 'package:bari_vara_project/controller/renter_flat_list_controller.dart';
import 'package:bari_vara_project/models/renter/renter_flat.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'flat_details.dart';
import 'flatdetails.dart';


class FlatList extends StatefulWidget {
  final int id;
  const FlatList({Key? key, required this.id}) : super(key: key);

  @override
  _FlatListState createState() => _FlatListState();
}

class _FlatListState extends State<FlatList> {
  late RenterFlatListController renterFlatListController;

  late final List<RenterFlat> _list; /* = [{"flat Number": 1,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 1,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 2,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 3,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 15,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 4,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 6,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 9,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 11,"flat_owner":"Hasan","flat_renting_price":"10000"},
  ];*/



  @override
  Widget build(BuildContext context) {
    renterFlatListController = Get.put(RenterFlatListController());
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder(
        future: renterFlatListController.fetchFlats(widget.id),
        builder: (BuildContext context,AsyncSnapshot<List<RenterFlat>> snapshot){
          if(snapshot.data == null){
            return SizedBox(
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

        },
      )



      /*ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context,int index){
            return sampleListUi(index);
          }),*/
    );
  }


  Widget sampleListUi(int idx){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Flat_Details(),
            // Pass the arguments as part of the RouteSettings. The
            // DetailScreen reads the arguments from these settings.
            settings: RouteSettings(
              arguments:_list[idx],
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
                Text("Flat Number: ${_list[idx].flatNumber}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Owner: ${_list[idx].owner_name}", style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
                Text("Flat Renting Price: ${_list[idx].rentAmount}",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
