import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  
  final double radius;
  final List<Color> colors;

  const Circle({Key key,@required this.radius,@required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: radius * 3,
        height: radius * 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.radius),
          gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft, 
                    colors: this.colors)
        ),
    ); 

  }
}