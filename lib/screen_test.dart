import 'package:flutter/material.dart';

class ScreenTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screen = Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
              height: double.infinity,
              alignment: Alignment.centerRight,
            ),
            Center(
              child: Container(
                  width: double.maxFinite,
                  height: 100.0,
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      'Infinity'.toUpperCase(),
                      //textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 8.0,
                      ),
                    ),
                  )
              ),
            )
          ],
        )
    );

    return screen;
  }
}