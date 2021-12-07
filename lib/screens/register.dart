import 'package:bari_vara_project/controller/register_controller.dart';
import 'package:bari_vara_project/models/owner/owner_data.dart';
import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/components/roundbutton.dart';
import 'package:bari_vara_project/components/backgroundimage.dart';

class Register extends StatefulWidget {

  final String type;
  const Register({Key? key, required this.type}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  late String name;
  late String address;
  late String occupation;
  late String phone;
  late String email;
  late String nid;
  late String password;
  late String emergancy_name;
  late String emergancy_phone;
  late String permanent_address;
  late String birth_date;
  late String fathers_name;
  String img = 'assests/barivarabackground.jpg';

  final RegisterController registerController = RegisterController();

  @override
  Widget build(BuildContext context) {
    if (widget.type == 'renter'){
      return renterForm(context);
    }
    else if (widget.type == 'owner'){
      return ownerForm(context);
    }
    return wrongRequest(context);
  }





  Widget wrongRequest(BuildContext context){
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Text('wrong')),
      ),
    ]
    );
  }


  Widget ownerForm(BuildContext context){
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(children: [
                Container(
                  child: Text('Sign Up as ${widget.type.toUpperCase()}',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 30, right: 20, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(children: [
                      TextField(
                        onChanged: (text){
                          name = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          address = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          occupation = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Occupation',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          phone = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          email = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          nid = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'National ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text){
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            onPressed: () {
                              ownerSignup(context);
                            },
                            child: Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purpleAccent,
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]))),
    ]);
  }

  Widget renterForm(BuildContext context){
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(children: [
                Container(
                  child: Text('Sign Up as ${widget.type.toUpperCase()}',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 30, right: 10, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          name = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          fathers_name = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Father Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          birth_date = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Date of Birth(DD/MM/YYYY)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          permanent_address = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Permanent Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          occupation = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Occupation',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          phone = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          nid = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'National ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextField(
                        onChanged: (text) {
                          emergancy_name = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name(Emergency Contanct)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          emergancy_phone = text;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone(Emergency Contanct)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            onPressed: () {
                              renterSignup(context);
                            },
                            child: Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purpleAccent,
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]))),
    ]);
  }

  void ownerSignup(BuildContext context) {

    Owner owner = Owner(name: name,email: email,phon: phone,nation_id: nid,address: address,password: password, occupation: occupation);

    registerController.requestToOwnerRegister(owner);


  }
  void renterSignup(BuildContext context) {
    Renter renter = Renter(
        name: name,
        fathers_name: fathers_name,
        email: email,
        phone: phone,
        nation_id: nid,
        password: password,
        occupation: occupation,
        emergency_name: emergancy_phone,
        emergency_phone: emergancy_phone,
        permanent_address: permanent_address,
        birth_date: birth_date,

    );
    registerController.requestToRenterRegister(renter);


  }



}


/*
class RegisterScreen extends StatelessWidget {
  final String type;
  String img = 'assests/barivarabackground.jpg';
  RegisterScreen(this.type);



  @override
  Widget build(BuildContext context) {
    print(type);
    String name;
    String address;
    String occupation;
    String phone;
    String email;
    String nid;
    String password;



    if (type == 'renter'){
      return renterForm(context);
    }
    else if (type == 'owner'){
      return ownerForm(context);
    }
    return wrongRequest(context);
  }

  Widget wrongRequest(BuildContext context){
    return Stack(children: [
        BackgroundImage(img: img),
    Scaffold(
    backgroundColor: Colors.transparent,
    body: SafeArea(
    child: Text('wrong')),
    ),
    ]
    );
  }


  Widget ownerForm(BuildContext context){
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(children: [
                Container(
                  child: Text('Sign Up as ${type.toUpperCase()}',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 30, right: 20, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(children: [
                      TextField(
                        onChanged: (text){

                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Occupation',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'National ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            onPressed: () {
                              signup(context);
                            },
                            child: Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purpleAccent,
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]))),
    ]);
  }

  Widget renterForm(BuildContext context){
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Stack(children: [
                Container(
                  child: Text('Sign Up as ${type.toUpperCase()}',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 30, right: 10, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Father Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Date of Birth(DD/MM/YYYY)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Permanent Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Occupation',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'National ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Name(Emergency Contanct)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Phone(Emergency Contanct)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Room Owner ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: ElevatedButton(
                            onPressed: () {
                              signup(context);
                            },
                            child: Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purpleAccent,
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]))),
    ]);
  }

  void signup(BuildContext context) {}
}*/
