import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  final String name;
  final String fathers_name;
  final String birth;
  final String permanenet_address;
  final String occupation;
  final String phone;
  final String email;
  final String nid;
  final String emergency_name;
  final String emergency_phone;

  const Profile({Key? key,
    required this.name,
    required this.fathers_name,
    required this.birth,
    required this.permanenet_address,
    required this.occupation,
    required this.phone,
    required this.email,
    required this.nid,
    required this.emergency_name,
    required this.emergency_phone,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  @override
  Widget build(BuildContext context) {
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
                              Text("Name : ${widget.name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Father's Name : ${widget.fathers_name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Date Of Birth : ${widget.birth}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Permanent Address : ${widget.permanenet_address}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Occupation : ${widget.occupation}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Phone : ${widget.phone}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("E-mail : ${widget.email}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Nation Id : ${widget.nid}",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                              Text("Name: ${widget.emergency_name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Phone : ${widget.emergency_phone}",style: TextStyle(color: Colors.white,fontSize: 20),),

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
