import 'package:flutter/material.dart';
import 'package:grocery_list/model/cart_Model.dart';
import 'package:grocery_list/pages/intro.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: intro_page(),
        )
      );
  }
}
