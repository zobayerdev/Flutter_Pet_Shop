import 'package:flutter/material.dart';

Color primaryColor = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey[300] ?? Colors.grey,
    blurRadius: 30,
    offset: const Offset(0, 10),
  )
];

List<Map> category = [
  {'name': 'Cats', 'iconPath': 'assets/images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'assets/images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'assets/images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'assets/images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'assets/images/horse.png'},
];
