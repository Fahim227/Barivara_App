import 'package:bari_vara_project/screens/OwnerScreens/flatlist.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/OwnerScreens/renterlist.dart';
import 'package:bari_vara_project/screens/OwnerScreens/earning.dart';

class OwnerHomeScreen extends StatefulWidget {
  final int id;
  const OwnerHomeScreen({Key? key,required this.id}) : super(key: key);

  @override
  _OwnerHomeScreenState createState() => _OwnerHomeScreenState();
}

class _OwnerHomeScreenState extends State<OwnerHomeScreen> {

  final int totalRoom=0;
  final int totalRent=0;
  final int totalRenter=0;
  final int leftRoom=0;
  late String finalDate='';

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
                  color: Colors.blue[50],
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              color: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
                              margin: EdgeInsets.all(10),
                              child: Container(
                                height:  100,
                                width:  100,
                                child: Center(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Room', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text('$totalRoom', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                )),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Card(
                              color: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
                              margin: EdgeInsets.all(10),
                              child: Container(
                                height:  100,
                                width:  100,
                                child: Center(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Renter', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text('$totalRenter', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                        color: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
                              margin: EdgeInsets.all(10),
                              child: Container(
                                height:  100,
                                width:  100,
                                child: Center(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Total Rented', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text('$totalRent', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                )),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Card(
                              color: Colors.blue[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
                              margin: EdgeInsets.all(10),
                              child: Container(
                                height:  100,
                                width:  100,
                                child: Center(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Left to Rent', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text('$leftRoom', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlatList( id:widget.id),
                      settings: RouteSettings(
                        arguments: {"id": widget.id}
                      )
                      ));
                },
                child: Card(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.151,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text('Flat List ->', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RenterList(id: widget.id, ),
                          settings: RouteSettings(
                              arguments: {"id": widget.id}
                          )
                      ));
                },
                child: Card(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.151,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text('Renter List ->', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThisMonthEarning(id: widget.id,),
                          settings: RouteSettings(
                              arguments: {"id": widget.id}
                          )
                      ));
                },
                child: Card(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.151,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text('This Month Earnings ->', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
