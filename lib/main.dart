import 'package:flutter/material.dart';
import 'package:new_app1/pages/login_page.dart';
import 'package:new_app1/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Contants.prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home:
          Contants.prefs.getBool("loggedIn") == true ? HomePage() : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
