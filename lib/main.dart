import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xoxo/models/tictac_model.dart';
import 'package:xoxo/screens/about_screen.dart';
import 'package:xoxo/screens/home_screean.dart';
import 'package:xoxo/screens/Game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TicTac(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            canvasColor: Colors.transparent,
            textTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.white, fontFamily: 'Baloo2', fontSize: 25),
              bodyText2: TextStyle(color: Colors.white, fontFamily: "Baloo2"),
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => HomeScreen(),
            '/About': (context) => AboutScreen(),
            '/GameScreen': (context) => GameScreen(),
          }),
    );
  }
}
