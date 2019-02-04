import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AboutMe',
      theme: new ThemeData(
        textTheme: TextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '#aibrahim3546',
            style: TextStyle(
              color: Color(0xFF040404),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0.0,
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: Container(
          color: Color(0xFFF2F2F2),
          padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
          child: HomeScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/user-solid-circle.svg',
                color: Color(0xFF040404),
                fit: BoxFit.cover,
                width: 28.0,
                height: 28.0,
              ),
              title: Container(height: 0.0,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/travel-case.svg',
                color: Color(0xFFAAAAAA),
                fit: BoxFit.cover,
                width: 28.0,
                height: 28.0,
              ),
              title: Container(height: 0.0,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/github-original.svg',
                color: Color(0xFFAAAAAA),
                fit: BoxFit.cover,
                width: 30.0,
                height: 30.0,
              ),
              title: Container(height: 0.0,),
            ),
          ],
        ),
      ),
    );
  }
}
