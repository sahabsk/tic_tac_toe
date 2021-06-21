import 'package:flutter/material.dart';
import 'package:flutter_game/display2.dart';
import 'package:flutter_game/display_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tic-Tac-Toe',
        theme: FlexColorScheme.light(scheme: FlexScheme.deepBlue).toTheme,
        darkTheme: FlexColorScheme.dark(scheme: FlexScheme.bigStone).toTheme,
        themeMode: ThemeMode.system,
        // theme: ThemeData(
        //   primaryColor: Colors.black,
        // ),
        home: Option());
  }
}

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shadowColor: Colors.blue,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25.0),
            // ),
            color: Color.fromRGBO(234, 242, 248, 1),
            margin: EdgeInsets.all(20),
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Select number of Players",
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DisplayPage()),
                    );
                  },
                  child: Text("1 Player"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DisplayPage2()),
                    );
                  },
                  child: Text("2 Player"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
