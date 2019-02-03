import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            _buildProfileRow(),
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
            ),
            _buildSkills(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildProfileImg(),
        _buildProfileDetails(),
      ],
    );
  }

  Widget _buildProfileImg() {
    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 250 / 250,
        child: Container(
          decoration: BoxDecoration(
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
                offset: Offset(1.0, 1.0),
                color: Colors.black12,
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://cdn.player.one/sites/player.one/files/2016/09/24/deadpool.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetails() {
    Widget _info(String text, int color) {
      return Padding(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 13.0,
            color: Color(color),
          ),
        ),
        padding: EdgeInsets.only(
          bottom: 5.0,
          left: 25.0,
        ),
      );
    }

    return Expanded(
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
          _info('Full Stack Developer', 0xFF040404),
          _info('Kuala Lumpur, Malaysia', 0xFF888888),
        ],
      ),
    );
  }

  Widget _buildSkills() {
    final skills = [
      'react-original-wordmark.svg',
      'javascript-original.svg',
      'typescript-plain.svg',
      'vuejs-original-wordmark.svg',
      'html5-original-wordmark.svg',
      'css3-original-wordmark.svg',
      'nodejs-original-wordmark.svg',
      'express-original-wordmark.svg',
      'mysql-original-wordmark.svg',
      'react-original.svg',
      'git-original-wordmark.svg',
      'flutter-square.svg',
    ];
    Widget _skill(String s) {
      return Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Color(0x11000000)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 1.0),
              color: Color(0x11000000),
            ),
          ],
        ),
        width: 68.0,
        height: 68.0,
        child: SvgPicture.asset(
          'assets/images/' + s,
          fit: BoxFit.cover,
        ),
      );
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Skills',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10.0,
            runSpacing: 10.0,
            children: skills.map((item) => _skill(item)).toList(),
          ),
        ],
      ),
    );
  }
}
