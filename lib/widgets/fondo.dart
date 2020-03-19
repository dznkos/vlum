import 'package:dart2000/widgets/circle.dart';
import 'package:flutter/material.dart';

class FondoPage extends StatefulWidget {
  @override
  _FondoPageState createState() => _FondoPageState();
}

class _FondoPageState extends State<FondoPage> {
  
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
          body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: <Widget>[
                Circle(
                  radius: 200, 
                  colors: [
                    Colors.red,
                    Colors.yellowAccent,
                  ])
              ],
            ),
          ),
    );
  }
}