
import 'package:bari_vara_project/screens/OwnerScreens/renterlist.dart';
import 'package:flutter/material.dart';
import 'package:bari_vara_project/screens/login.dart';
import 'package:bari_vara_project/screens/classify.dart';
import 'package:bari_vara_project/screens/OwnerScreens/ownerhomescreen.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterhomescreen.dart';
import 'package:bari_vara_project/screens/OwnerScreens/flatlist.dart';
import 'package:bari_vara_project/screens/OwnerScreens/earning.dart';
import 'package:bari_vara_project/screens/RenterScreens/renterdashboard.dart';
int nid =1;
void main() => runApp(MaterialApp(
      initialRoute: '/renterHome',
      routes: {
        '/': (context) => LoginScreen('owner'),
        '/classify': (context) => OwnerOrRenter(loginOrReg: 'login'), //1st screen
        '/ownerHome': (context) => OwnerHomeScreen(id: nid,),
        '/renterHome': (context) => RenterHomeScreen(id: 2,),
        '/flatlist': (context) => FlatList(),
        '/renterlist': (context) => RenterList(),
        '/earned': (context) => ThisMonthEarning(),
      },
    ));
