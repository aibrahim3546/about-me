import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Color a = const Color(0xFFFAF)
    return MaterialApp(
      title: 'GetDesign',
      theme: new ThemeData(
          primaryColor: Color(0xFFFAFAFA),
          backgroundColor: Color(0xFF443E3C),
          iconTheme: IconThemeData(color: Color(0xFF443E3C)),
          textTheme: TextTheme(
              headline: TextStyle(
                fontSize: 16.0,
              ),
              title: TextStyle(
                fontSize: 40.0,
              ),
              display1: TextStyle(
                fontSize: 13.0,
              ))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'Pokemons',
                style: TextStyle(color: Theme.of(context).backgroundColor),
                textAlign: TextAlign.center,
              ),
            ),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG',
              fit: BoxFit.cover,
              // width: 20.0,
              // height: 20.0,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: PokemonRow(),
    );
  }
}

class PokemonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG',
                  fit: BoxFit.cover,
                  // width: 20.0,
                  // height: 20.0,
                ),
              ),
              Expanded(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG',
                  fit: BoxFit.cover,
                  // width: 20.0,
                  // height: 20.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
