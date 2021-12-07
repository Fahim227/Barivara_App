import 'package:flutter/material.dart';
import 'package:bari_vara_project/components/backgroundimage.dart';
import 'package:bari_vara_project/components/roundbutton.dart';
import 'package:bari_vara_project/screens/register.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';

class LoginScreen extends StatelessWidget {
  //final String type;
  int id = 1;
  String type;
  LoginScreen(this.type);

  @override
  Widget build(BuildContext context) {
    //String t = type;


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
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Email or Phone',
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
  
  void click(BuildContext context){
    
  }

  void requestToLogin(BuildContext context) {
    // request to the API to Login
    // and get the user primaryKey(PK)
    // send the PK to next activity
    if(type == 'owner'){
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
  }
}
