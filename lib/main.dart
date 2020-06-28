import 'package:flutter/material.dart';
import 'package:new_app1/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
