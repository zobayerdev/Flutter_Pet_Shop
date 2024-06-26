import 'package:flutter/material.dart';
import 'package:flutter_shop_pet/drawerScreen.dart';
import 'package:flutter_shop_pet/homeScreen.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeScreen(),
          DrawerScreen(),
        ],
      ),
    );
  }
}
