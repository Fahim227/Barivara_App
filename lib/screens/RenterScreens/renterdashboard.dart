import 'package:flutter/material.dart';

class RenterDashboard extends StatefulWidget {
  const RenterDashboard({Key? key}) : super(key: key);

  @override
  _RenterDashboardState createState() => _RenterDashboardState();
}

class _RenterDashboardState extends State<RenterDashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                child: Image.network('https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg'),

              )
            ],
          ),
        ),
      ),
    );
  }
}
