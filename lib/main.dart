import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'screens/home.dart';
import 'screens/github.dart';
import 'config.dart' as config;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  String appBarTitle = '#aibrahim3546';
  final List<Widget> mainScreen = [
    HomeScreen(),
    HomeScreen(),
    GithHubScreen(),
  ];
  final List titles = [
    '#aibrahim3546',
    'Find Me',
    'GitHub Repos',
  ];

  @override
  Widget build(BuildContext context) {
    ValueNotifier<Client> client = ValueNotifier(
      Client(
        endPoint: 'https://api.github.com/graphql',
        cache: InMemoryCache(),
        apiToken: config.accessToken,
      ),
    );

    final int normalColor = 0xFFAAAAAA;
    final int activeColor = 0xFF040404;

    _svgIcon(int color, String assetsName) {
      return SvgPicture.asset(
        assetsName,
        color: Color(color),
        fit: BoxFit.cover,
        width: 30.0,
        height: 30.0,
      );
    }

    return GraphqlProvider(
      client: client,
      child: MaterialApp(
        title: 'AboutMe',
        theme: new ThemeData(
          textTheme: TextTheme(),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              appBarTitle,
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
            child: mainScreen[selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (int i) {
              setState(() {
                selectedIndex = i;
                appBarTitle = titles[i];
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: _svgIcon(
                    normalColor, 'assets/images/user-solid-circle.svg'),
                activeIcon: _svgIcon(
                    activeColor, 'assets/images/user-solid-circle.svg'),
                title: Container(
                  height: 0.0,
                ),
              ),
              BottomNavigationBarItem(
                icon: _svgIcon(normalColor, 'assets/images/travel-case.svg'),
                activeIcon:
                    _svgIcon(activeColor, 'assets/images/travel-case.svg'),
                title: Container(
                  height: 0.0,
                ),
              ),
              BottomNavigationBarItem(
                icon:
                    _svgIcon(normalColor, 'assets/images/github-original.svg'),
                activeIcon:
                    _svgIcon(activeColor, 'assets/images/github-original.svg'),
                title: Container(
                  height: 0.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
