
import 'package:bari_vara_project/controller/renter_profile_controller.dart';
import 'package:bari_vara_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/components/backgroundimage.dart';
import 'package:bari_vara_project/components/roundbutton.dart';
import 'package:bari_vara_project/screens/register.dart';
import 'package:flutter/rendering.dart';
import 'package:bari_vara_project/screens/RenterScreens/flatlist.dart';
import 'package:bari_vara_project/screens/RenterScreens/profile.dart';
import 'package:bari_vara_project/screens/RenterScreens/addflats.dart';
import 'package:get/get.dart';

class RenterHomeScreen extends StatefulWidget {
  final int id;
  const RenterHomeScreen({Key? key,required this.id}) : super(key: key);


  @override
  _RenterHomeScreenState createState() => _RenterHomeScreenState();
}

class _RenterHomeScreenState extends State<RenterHomeScreen> {

  String name='Md. Fahim Islam';
  String fathers_name='Md. Nazrul Islam';
  String birth='9/01/1999';
  String permanenet_address='kfnsdosfsdoi foi sd fsoisndo';
  String occupation='Student';
  String phone='01234567989';
  String email='fahim@gmail.com';
  String nid='569871682';
  String emergency_name='Fahim';
  String emergency_phone='Fahim';
  int _current_idx = 0;




  @override
  Widget build(BuildContext context) {

    final tabs = [
      FlatList(id:widget.id),
      Profile(
        id:widget.id
        /*name: 'Md. Fahim Islam',
        fathers_name: 'Md. Nazrul Islam',
        birth: '9/01/1999',
        permanenet_address: 'kfnsdosfsdoi foi sd fsoisndo',
        occupation: 'Student',
        phone: '01234567989',
        email: 'fahim@gmail.com',
        nid: '569871682',
        emergency_name: 'Soemthid',
        emergency_phone: '0123548745',*/
      ),

    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: tabs[_current_idx],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.teal[200],
          selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
          selectedItemColor: Colors.black,
          selectedFontSize: 15,
          currentIndex: _current_idx,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Flat List',
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
            ),
          ],
          onTap: (idx) {
              setState(() {
                _current_idx = idx;
              });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.push(context, MaterialPageRoute(builder: (context) => RenterAddFlats(id:widget.id)));
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }



  Widget profileTab(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Image.network('https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg')),
          ),
          Container(
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
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
                      children: [
                        Text('Profile Details:',style: TextStyle(color: Colors.white,fontSize: 30),),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              Text("Name : ${name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Father's Name : ${fathers_name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Date Of Birth : ${birth}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Permanent Address : ${permanenet_address}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Occupation : ${occupation}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Phone : ${phone}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("E-mail : ${email}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Nation Id : ${nid}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                        Text('Emergency Contacts:',style: TextStyle(color: Colors.white,fontSize: 30),),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              Text("Name: ${email}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Phone : ${nid}",style: TextStyle(color: Colors.white,fontSize: 20),),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
              )

          )

        ],
      ),

    );
  }
}
