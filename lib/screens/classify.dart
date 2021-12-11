import 'package:bari_vara_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/components/backgroundimage.dart';
import 'package:bari_vara_project/components/roundbutton.dart';
import 'package:bari_vara_project/screens/register.dart';


class OwnerOrRenter extends StatelessWidget {
  final String loginOrReg;
  const OwnerOrRenter({Key? key, required this.loginOrReg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String owner = 'owner';
    String renter = 'renter';
    return Stack(
        children: [
          BackgroundImage(img: ''),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${loginOrReg.toUpperCase()} as : ',
                        style: TextStyle(color: Colors.white, fontSize: 50)),
                    padding: EdgeInsets.only(left: 80, right: 80, top: 100),
                  ),
                  SizedBox(height: 80,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                      onPressed: () {
                        if (loginOrReg == 'login'){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen(type: owner,)),
                          );
                        }
                        else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register(type: owner,)),
                          );
                        }

                      },
                      child: Text(owner.toUpperCase()),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                      onPressed: () {
                        if (loginOrReg == 'login'){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen(type: renter,)),
                          );
                        }
                        else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register(type: renter)),
                          );
                        }
                      },
                      child: Text(renter.toUpperCase()),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
  }
}
