import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/flatdetails.dart';
import 'package:get/get.dart';
import 'package:bari_vara_project/controller/owner_flat_list.dart';
class FlatList extends StatefulWidget {
  const FlatList({Key? key}) : super(key: key);

  @override
  _FlatListState createState() => _FlatListState();
}

class _FlatListState extends State<FlatList> {
  final OwnerFlatListController ownerFlatListController = Get.put(OwnerFlatListController(1));

    late List<OwnerFlatList> _list ; /*[{"flat Number": 1,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 1,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 2,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 3,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 15,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 4,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 6,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 9,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 11,"flat_renter":"Hasan","flat_renting_price":"10000"},
  ];*/

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /*final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);*/
    return Scaffold(
      appBar: AppBar(title: Text('Flat List'),),
      body: /*Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context,int index){
              return sampleListUi(index);
            }),
      ),*/


      Obx(() {
        if (ownerFlatListController.isLoading.value)
          return Center(child: CircularProgressIndicator(),);
        else
          print(ownerFlatListController.flatList.length);
          print(ownerFlatListController.flatList[0].flatRenterId);
          _list = ownerFlatListController.flatList;
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context,int index){
                  return sampleListUi(index);
                }),
          );
      })
    );
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
              Text("Flat Number: ${_list[idx].flatNumber}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Flat Renter: ${_list[idx].flatRenterName}", style: TextStyle(color: Colors.white,fontSize: 20),),
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
