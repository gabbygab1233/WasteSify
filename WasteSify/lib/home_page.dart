import 'package:flutter/material.dart';
import 'package:WasteSify/screens/detect_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final solgan = Padding(
        padding: EdgeInsets.all(2.0),
        child: Text(
          'Put your Waste at the Right Place',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xff015734),
              fontSize: 36.0),
          textAlign: TextAlign.center,
        ));

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 70.0),
      child: SizedBox(
        width: 200,
        height: 40,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetectScreen()));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(5),
          color: Color(0xff00923f),
          child: Text(
            'Get Started',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo/cover.png"),
                          fit: BoxFit.scaleDown),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(right: 20.0, left: 20.0),
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      solgan,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[registerButton],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
