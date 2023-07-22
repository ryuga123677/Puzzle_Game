import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:still_ocean/game3.dart';
import 'package:still_ocean/mainmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black
        )
      ),
      title: 'Flutter Demo',


      home:AnimatedSplashScreen(
        splash: Text('WELCOME',style: TextStyle(color: Colors.blue,fontSize: 30),),

        nextScreen: mainmenu(),
        splashTransition: SplashTransition.slideTransition,
      )
    );
  }
}
