import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => new _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return FlareActor("animations/Future.flr",
        animation: "rotate");
  }
}