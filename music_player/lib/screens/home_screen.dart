// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/screens/favourites.dart';
import 'package:music_player/screens/home.dart';
import 'package:music_player/screens/library.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = [
    Home(),
    favourites(),
    albums(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepOrange.shade800.withOpacity(0.8),
            Colors.deepOrange.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepOrange.shade800,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }
}
