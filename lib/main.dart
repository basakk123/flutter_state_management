import 'package:flutter/material.dart';
import 'package:state_management/screens/my_cart_screen.dart';
import 'package:state_management/screens/my_catalog_screen.dart';
import 'package:state_management/screens/my_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: BeveledRectangleBorder(),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => MyLoginScreen(),
        "/catalog": (context) => MyCatalogScreen(),
        "/cart": (context) => MyCartScreen(),
      },
    );
  }
}
