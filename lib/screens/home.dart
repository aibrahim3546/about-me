import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildProfileRow(),
        Padding(
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
        _buildExperience(),
      ],
    );
  }

  Widget _buildProfileRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
              Radius.circular(100.0),
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
                'https://pbs.twimg.com/profile_images/1084160351216652288/iDkgBYX2_400x400.jpg',
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
            spacing: 19.0,
            runSpacing: 16.0,
            children: skills.map((item) => _skill(item)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildExperience() {
    final journeysList = [
      {
        'title': 'Graduated',
        'company': 'Beginning',
        'date': 'Nov 2017',
      },
      {
        'title': 'Ass. Full Stack Developer',
        'company': 'Revenue Monster',
        'date': 'Dec 2017',
      },
    ];
    Widget _experience(journey) {
      return Expanded(
        flex: 1,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: journeysList[0]['title'] == journey['title'] ? 1 : 0,
                    child: Container(
                      height: 7.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color(0xFF999999),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: journeysList[0]['title'] == journey['title'] ? 9 : 10,
                    child: Container(
                      height: 5.0,
                      color: Color(0xFF999999),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Color(0xFF040404),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 5.0,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              ),
            ),
            // ),
          ],
        ),
      );
    }

    Widget _experienceDetails(journey) {
      return Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      journey['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF040404),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: Text(
                      journey['company'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: Text(
                      journey['date'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 15.0),
          child: Text(
            'My Journey',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          child: Row(
            children: journeysList
                .map((journey) => _experience(journey))
                .toList(),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: journeysList
                .map((journey) => _experienceDetails(journey))
                .toList(),
          ),
        ),
      ],
    );
  }
}
