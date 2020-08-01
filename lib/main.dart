import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mushroomm/models/cart.dart';
import 'package:mushroomm/pages/categoriespage.dart';
import 'package:mushroomm/pages/paymentpage.dart';
import 'package:provider/provider.dart';
import 'package:mushroomm/pages/loginpage.dart';
import 'package:mushroomm/pages/signuppage.dart';
import 'pages/firstpage.dart';

import 'pages/cartpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: LoginPage.id,
        routes: {
          LoginPage.id: (context)=>LoginPage(),
          SignupPage.id:(context)=>SignupPage(),
          Mush.id: (context)=>Mush(),
          CategoryPage.id: (context)=>CategoryPage(),
          PaymentPage.id:  (context)=>PaymentPage(),
          CartPage.id: (context)=>CartPage(),
        },
      ),
    );
  }
}


