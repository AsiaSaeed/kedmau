import 'package:flutter/material.dart';
import 'package:kedma/home.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<SplashScreen> {
  Color darkBlue = Color(0xff002046);
  Color lightBrown = Color(0xffbc9a6b);
  void initState() {
    super.initState();
    _duration().then((status) {
      if (status) _navigateToHome();
      //else
      // navigate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 30,
                child: Image.asset(
                  'assets/logo.jpg',
                  width: MediaQuery.of(context).size.width/1.6,
                  height: MediaQuery.of(context).size.height / 1.6,
                ),
              ),
              Positioned(
                bottom:150,
                child:Image.asset('assets/text.jpg',width:MediaQuery.of(context).size.width/1.5,)
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _duration() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Home()));
  }
}
