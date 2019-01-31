import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Color(0xFFFFFFFF),
        padding: EdgeInsets.all(50.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: new AspectRatio(
                    aspectRatio: 250 / 250,
                    child: new Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black12,
                          style: BorderStyle.solid,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            offset: Offset(2.0, 2.0),
                            color: Colors.black12,
                          ),
                        ],
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          // alignment: FractionalOffset.center,
                          image: new NetworkImage(
                            'https://cdn.player.one/sites/player.one/files/2016/09/24/deadpool.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        child: Text(
                          'Ahmad Ibrahim',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF040404),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          bottom: 5.0,
                          left: 25.0,
                        ),
                      ),
                      Padding(
                        child: Text(
                          'Full Stack Developer',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color: Color(0xFF040404),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          bottom: 5.0,
                          left: 25.0,
                        ),
                      ),
                      Padding(
                        child: Text(
                          'Kuala Lumpur, Malaysia',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                            color: Color(0xFF888888),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          left: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Text(
                'A JavaScript ecosystem enthuasiast. Over 1+ year of experience in commercial projects in entertainment and digital payments.',
                style: TextStyle(
                  height: 1.25,
                  color: Color(0xFF040404),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
