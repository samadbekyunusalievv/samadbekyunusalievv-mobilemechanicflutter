import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mechanich_hacaton_/Mehanic/Lorem.dart';
import 'package:mobile_mechanich_hacaton_/Model/Entity/mehanic_entity.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/ChatPage.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/HomePage.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/MapPage.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/Profile.dart';
import 'package:mobile_mechanich_hacaton_/NavigatorButton/ShopPage.dart';
import 'package:mobile_mechanich_hacaton_/Servis/api_service.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomePage(),
      MapPage(),
      ShopPage(),
      ChatPage(),
      ProfilePage()
    ];
    void onItemTap(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Container(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/home.png",
              width: 23.36,
              height: 23.6,
            ),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/map.png",
              width: 20,
              height: 24.5,
            ),
            label: ("Map"),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/shopping.png",
              width: 23.35,
              height: 23.33,
            ),
            label: ("Shop"),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/chat.png",
              width: 21,
              height: 21,
            ),
            label: ("Chat"),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(220, 220, 1, 106),
            icon: Image.asset(
              "assets/images/userProf.png",
              width: 21,
              height: 21,
            ),
            label: ("Profile"),
          ),
        ],
      ),
    );
  }
}


