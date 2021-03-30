import 'package:flutter/material.dart';
import 'package:teledrop/screen/map_screen.dart';


class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: SizedBox(
                    child: Image.asset(
              'assets/logo_transparent.png',
            ))),
            Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blueAccent,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeleDropScreen(),
                    )),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                elevation: 15,
                padding: EdgeInsets.symmetric(horizontal: 50.0),
              ),
            )

          ],
        ),
      ),
    );
  }
}
