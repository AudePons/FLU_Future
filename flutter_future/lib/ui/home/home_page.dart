import 'package:flutter/material.dart';
import '../../model/animation.dart';
import 'home_page_body.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: <Widget>[
           GradientAppBar(),
           HomePageBody(),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  GradientAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return  Container(
      padding:  EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Center(
        child : Row(
        children: <Widget>[
          Expanded(
            child: AnimationPage(), 
          ),
          // Expanded(
          //   child: Text('Future',
          //   style:const TextStyle(
          //     color: Colors.white,
          //     fontFamily: 'Poppins',
          //     fontSize: 36.0,
          //     fontWeight: FontWeight.w600
          //   ),
          // ),
          // ),
        ]
        ),
      ),
      decoration:  BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            const Color.fromRGBO(32, 56, 100, 1),
            const Color(0xFF00CCFF)
          ],
        ),
      ),
    );
  }
}