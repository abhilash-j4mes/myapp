import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async {
    await Future.delayed(Duration(milliseconds: 3000),() {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=>RandomWords()));

  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child: Image(
        image: AssetImage("assets/images/ghost.gif"),
          ),
      ),
    );
  }
}

