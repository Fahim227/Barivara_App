import 'package:bari_vara_project/models/owner/owner_flat_list_model.dart';
import 'package:bari_vara_project/screens/OwnerScreens/owner_flat_details.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/RenterScreens/flatdetails.dart';
import 'package:get/get.dart';
import 'package:bari_vara_project/controller/owner_flat_list.dart';
class FlatList extends StatefulWidget {
  final int id;
  const FlatList({Key? key, required this.id}) : super(key: key);

  @override
  _FlatListState createState() => _FlatListState();
}

class _FlatListState extends State<FlatList> {
   late OwnerFlatListController ownerFlatListController;

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
    ownerFlatListController = Get.put(OwnerFlatListController(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {

    /*final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);
    ownerFlatListController.id = id['id']; */

    _list = ownerFlatListController.flatList;
    return Scaffold(
      appBar: AppBar(title: Text('Flat List'),),
      body: Column(children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Obx((){
              return ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (BuildContext context,int index){
                    return sampleListUi(index);
                  });
            }),
          ),
        ),
      ],)

      /*Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context,int index){
              return sampleListUi(index);
            }),
      ),*/


     /* Obx(() {
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
      })*/
    );
  }
  Widget sampleListUi(int idx){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OwnerFlatDetails(),
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
