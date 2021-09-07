import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Function()? onPress;
  
  Logo({this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Center(
        child: GestureDetector(
          onTap: onPress,
          child: Image(
            image:
                AssetImage("assets/images/Hololive_Production.png"),
            height: 50,
          ),
        ),
      ),
    );
  }
}