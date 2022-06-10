import 'package:flutter/material.dart';
import 'package:travel_around_app/screens/detail_screen.dart';
import 'package:travel_around_app/screens/home_screen.dart';
import 'package:travel_around_app/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Travel Around',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromRGBO(18, 18, 18, 1),
          onPrimary: Color.fromRGBO(130, 130, 130, 1),
          secondary: Color.fromRGBO(234, 117, 67, 1),
          onSecondary: Color.fromRGBO(255, 190, 162, 1),
          error: Color.fromRGBO(231, 66, 66, 1),
          onError: Color.fromRGBO(249, 226, 226, 1),
          background: Color.fromRGBO(249, 249, 249, 1),
          onBackground: Color.fromRGBO(18, 18, 18, 1),
          surface: Colors.white,
          onSurface: Color.fromRGBO(18, 18, 18, 1),
        ),
      ),
      home: const IntroScreen(),
      initialRoute: const IntroScreen().routeName,
      routes: {
        const HomeScreen().routeName: (context) => const HomeScreen(),
        const IntroScreen().routeName: (context) => const IntroScreen(),
        const DetailScreen().routeName: (context) => const DetailScreen(),
      },
    );
  }
}
