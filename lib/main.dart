import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
    debugShowCheckedModeBanner: false,
  ),
);
class BallPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
  return Scaffold(
   backgroundColor: Colors.blue,
   appBar: AppBar(
    backgroundColor: Colors.blue,
    title:  Text('Challenge')  ,
    centerTitle: true  
   ),
   body: Ball(),  
  );
  }
}
class Ball extends StatefulWidget {
  @override 
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
  int NumberBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {});
          NumberBall = Random().nextInt(5) + 1;
        },
        child: Image.asset('assets/images/ball$NumberBall.png'),
      ),
    );
  }
}