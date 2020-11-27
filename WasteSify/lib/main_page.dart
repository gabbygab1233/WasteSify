import 'package:flutter/material.dart';
import 'package:WasteSify/screens/detect_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/logo/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Image.asset(
            'assets/logo/logo.png',
            alignment: Alignment.topCenter,
          )),
          Positioned.fill(
            child: Column(
              children: [
                Spacer(),
                Spacer(),
                Text(
                  'Put Waste in the Right Place',
                  style: TextStyle(
                    color: Color(0xff015734),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Color(0xff015734),
                      width: 2.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return DetectScreen();
                    }));
                  },
                  child: Container(
                    width: 200.0,
                    height: 40.0,
                    alignment: Alignment.center,
                    child: Text(
                      "Lets's get started",
                      style: TextStyle(
                        color: Color(0xff00923f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
