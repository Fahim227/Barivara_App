import 'package:bari_vara_project/controller/login_controller.dart';
import 'package:bari_vara_project/models/reponse.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/components/backgroundimage.dart';
import 'package:bari_vara_project/components/roundbutton.dart';
import 'package:bari_vara_project/screens/register.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:get/get.dart';

/*
class LoginScreen extends StatefulWidget {

  final String type;
  const LoginScreen({Key? key,required this.type}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  int id = 1;
  late LoginController loginController;
  late String email;
  late String password;


  @override
  Widget build(BuildContext context) {

    String img = 'assests/barivarabackground.jpg';
    //loginController = LoginController();
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  child: Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 150, right: 150, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text){
                            email = text;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon: Icon(Icons.person),
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
                        Container(
                          padding: EdgeInsets.only(left: 200),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Button
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: ElevatedButton(
                              onPressed: () {
                                requestToLogin(context);
                              },
                              child: Text('Sign In'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.purpleAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Do not have any account! ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            new GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Register(type:widget.type)),
                                );
                              },
                              child: new Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    ]);
  }


  void requestToLogin(BuildContext context) {
    // request to the API to Login
    // and get the user primaryKey(PK)
    // send the PK to next activity


    if(widget.type == 'owner'){
      loginController.requestToLogin(email,password, widget.type);
      print(loginController.response);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OwnerHomeScreen(id: 1,)),
      );
    }
    else if (widget.type == 'renter'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RenterHomeScreen(id: 2,)),
      );
    }
    print('ok');
  }


}

*/



class LoginScreen extends StatelessWidget {
  //final String type;
  final String type;
  LoginScreen({required this.type});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    //String t = type;

    int id = 1;


    String img = 'assests/barivarabackground.jpg';
    return Stack(children: [
      BackgroundImage(img: img),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  child: Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  padding: EdgeInsets.only(left: 150, right: 150, top: 100),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 25,
                        right: 25),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Email or Phone',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          validator: (value){
                            // check for validation
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
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
                          validator: (value) {
                            // check for validation
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 200),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Button
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: ElevatedButton(
                        onPressed: () {
                          //requestToLogin(context);
                          loginController.requestToLogin(emailController.text, passwordController.text, type);
                          Future.delayed(Duration(seconds: 3),() {
                            if(type == 'owner'){
                              if(LoginController.response){
                                print(LoginController.response);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OwnerHomeScreen(id: LoginController.id,)),
                                );
                              }
                              else{
                                final snackBar = SnackBar(content: Text("Error in Login \n${ LoginController.message}"));
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                            }
                            else if (type == 'renter'){
                              if(LoginController.response){
                                print(LoginController.response);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RenterHomeScreen(id: LoginController.id,)),
                                );
                              }
                              else{
                                final snackBar = SnackBar(content: Text("Error in Login \n${ LoginController.message}"));
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                            }
                          });
                         //print(emailController.text);
                         //print(passwordController.text);
                        },
                        child: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purpleAccent,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)
                        ),
                      ),
                    ),
                  ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Do not have any account! ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            new GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           Register(type:type)),
                                );
                              },
                              child: new Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    ]);

  }
  /*void requestToLogin(BuildContext context) {
    // request to the API to Login
    // and get the user primaryKey(PK)
    // send the PK to next activity


    if(type == 'owner'){
      loginController.requestToLogin(email,password, widget.type);
      print(loginController.response);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OwnerHomeScreen(id: 1,)),
      );
    }
    else if (type == 'renter'){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RenterHomeScreen(id: 2,)),
      );
    }
    print('ok');
  }*/


  void click(BuildContext context){
    
  }

}