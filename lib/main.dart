import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetDesign',
      theme: new ThemeData(
        primaryColor: Color(0xFFC0C1C0),
        backgroundColor: Color(0xFF040404),
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 16.0,
          ),
          title: TextStyle(
            fontSize: 40.0,
          ),
          display1: TextStyle(
            fontSize: 13.0,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

// class PokemonRow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(50.0),
//       child: ListView(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Expanded(
//                 child: Image.network(
//                   'https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG',
//                   fit: BoxFit.cover,
//                   // width: 20.0,
//                   // height: 20.0,
//                 ),
//               ),
//               Expanded(
//                 child: Image.network(
//                   'https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG',
//                   fit: BoxFit.cover,
//                   // width: 20.0,
//                   // height: 20.0,
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
