import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop_pet/configuration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactor),
      color: Colors.grey[200],
      duration: const Duration(milliseconds: 250),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                        icon: const Icon(Icons.arrow_back),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xoffset = 230;
                            yoffset = 150;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        },
                        icon: const Icon(Icons.menu),
                      ),
                Column(
                  children: [
                    const Text("Location"),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primaryColor),
                        const Text("Bangladesh"),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/cat.png"),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text("Search pet to adopt"),
                Icon(Icons.settings),
              ],
            ),
          ),
          Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(category[index]['iconPath']),
                      ),
                      Text(category[index]['name']),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
