import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ThisMonthEarning extends StatefulWidget {
  const ThisMonthEarning({Key? key}) : super(key: key);

  @override
  _ThisMonthEarningState createState() => _ThisMonthEarningState();
}

class _ThisMonthEarningState extends State<ThisMonthEarning> {


  final List _list = [{"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
    {"flat_number": 1,"flat_amount":"5000","earned":1000.01,"remained": 4000.99},
  ];
  double total_earning =0;
  double total_remaining =0;
  String defaultValue = 'Custom broadcast receiver';

  @override
  void initState() {
    super.initState();

    for(int i =0;i<_list.length;i++){
      total_earning += _list[i]["earned"];
    }

    for(int i =0;i<_list.length;i++){
      total_remaining += _list[i]["remained"];
    }


  }


  @override
  Widget build(BuildContext context) {
    final Map<String,Object> id = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    print(id['id']);
    return Scaffold(
      appBar: AppBar(title: Text('Income Details'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (BuildContext context,int index){
                    return sampleListUi(index);
                  }),
            ),
            SizedBox(height: 5,),
            Container(
              child: Card(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Earned: ${total_earning.toStringAsFixed(3)}",style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(height: 20,),
                        Text("Total Remaining : ${total_remaining.toStringAsFixed(3)}",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                  )
              )

            )
            /*
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            )*/
          ],
        ),
      ),
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
              Text("Flat Number : ${_list[idx]['flat_number']}", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),
              Text("Renting Amount : ${_list[idx]['flat_amount']}", style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Earned: ${_list[idx]['earned']}",style: TextStyle(color: Colors.white,fontSize: 20),),

                  Text("Remain : ${_list[idx]['remained']}",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
