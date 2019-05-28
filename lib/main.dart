import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/cart.dart';
import 'package:shop_app/screens/catalog.dart';
import 'package:shop_app/screens/login.dart';

import 'model/cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Demo',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          textTheme: TextTheme(
            display4: TextStyle(
              fontFamily: 'Corben',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/':(context) => MyLoginScreen(),
          '/catalog':(context) => MyCatalog(),
          '/cart':(context) => MyCart(),
        },
      ),
    );
  }
}
