// @dart=2.9
import 'package:bari_vara_project/screens/OwnerScreens/renterlist.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/login.dart';
import 'package:bari_vara_project/screens/flatdetails.dart';
import 'package:bari_vara_project/screens/classify.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:bari_vara_project/screens/OwnerScreens/flatlist.dart';
import 'package:bari_vara_project/screens/OwnerScreens/earning.dart';
int nid =1;
void main() => runApp(MaterialApp(
      initialRoute: '/classify',
      routes: {
        '/': (context) => LoginScreen(type:'owner'),
        '/classify': (context) => OwnerOrRenter(loginOrReg: 'login'), //1st screen
        '/ownerHome': (context) => OwnerHomeScreen(id: nid,),
        '/renterHome': (context) => RenterHomeScreen(id: 2,),
        '/flatlist': (context) => FlatList(),
        '/renterlist': (context) => RenterList(id: 1,),
        '/earned': (context) => ThisMonthEarning(),
        '/flatDetails': (context) => FlatDetails(),
      },
    ));
