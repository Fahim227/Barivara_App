import 'package:flutter/material.dart';


class FlatList extends StatefulWidget {
  const FlatList({Key? key}) : super(key: key);

  @override
  _FlatListState createState() => _FlatListState();
}

class _FlatListState extends State<FlatList> {


  final List _list = [{"flat Number": 1,"flat_renter":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 1,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 2,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 3,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 15,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 4,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 6,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 9,"flat_owner":"Hasan","flat_renting_price":"10000"},
    {"flat Number": 11,"flat_owner":"Hasan","flat_renting_price":"10000"},
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (BuildContext context,int index){
            return sampleListUi(index);
          }),
    );
  }


  Widget sampleListUi(int idx){
    return Container(
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
              Text("Flat Number: ${_list[idx]['flat Number']}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Flat Owner: ${_list[idx]['flat_owner']}", style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Flat Renting Price: ${_list[idx]['flat_renting_price']}",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
