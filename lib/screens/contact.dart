import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactScreen extends StatelessWidget {
  contact(String assetName, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 2.0, right: 5.0),
            child: SvgPicture.asset(
              assetName,
              width: 16,
              height: 16,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/conversation.svg',
              width: 55,
              height: 55,
              alignment: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Let\'s have a cup of coffee.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Reach me out via',
                style: TextStyle(
                  fontSize: 16.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            contact('assets/images/envelope.svg', 'aibrahim3546@gmail.com'),
            contact('assets/images/github-original.svg', 'aibrahim3546'),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Or',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'via twitter @aibrahim3546',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
