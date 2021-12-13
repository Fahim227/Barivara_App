import 'package:bari_vara_project/models/renter/renter_data.dart';
import 'package:flutter/material.dart';

class RenterProfile extends StatelessWidget {
  final Renter renter;
  const RenterProfile({Key? key,required this.renter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Renter Profile'),),
      body: SingleChildScrollView(
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
                                Text("Name : ${renter.name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 15,),
                                Text("Rented Flat Number : ${renter.flat_number}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Father's Name : ${renter.fathers_name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Date Of Birth : ${renter.birth_date}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Permanent Address : ${renter.permanent_address}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Occupation : ${renter.occupation}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Phone : ${renter.phone}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("E-mail : ${renter.email}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Nation Id : ${renter.nation_id}",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                Text("Name: ${renter.emergency_name}",style: TextStyle(color: Colors.white,fontSize: 20),),
                                SizedBox(height: 10,),
                                Text("Phone : ${renter.emergency_phone}",style: TextStyle(color: Colors.white,fontSize: 20),),

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

      ),
    );
  }
}
