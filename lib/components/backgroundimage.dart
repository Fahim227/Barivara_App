import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String img;

  const BackgroundImage({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assests/barivarabackground.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
    );
  }
}
