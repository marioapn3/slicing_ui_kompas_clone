import 'package:flutter/material.dart';
import 'package:kompas_clone_mario/news/menu_new.dart';
import 'package:kompas_clone_mario/news/new_screen.dart';
import 'package:kompas_clone_mario/news/save_news.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    const NewsScreen(),
    const SaveNews(),
    const MenuNews(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: 'Hari ini',
            icon: Icon(Icons.feed),
          ),
          BottomNavigationBarItem(
            label: 'Baca Nanti',
            icon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.reorder),
          ),
        ],
      ),
    );
  }
}
