import 'package:acs_lab/Activity/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACS Lab',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
