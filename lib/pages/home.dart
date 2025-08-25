import 'package:flutter/material.dart';

import '../constants/data.dart';
import 'casino_page.dart';
import 'deportes_page.dart';
import 'expandir_page.dart';
import 'favoritos_page.dart';
import 'jugar_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    CasinoPage(),
    DeportesPage(),
    FavoritosPage(),
    JugarPage(),
    ExpandirPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: primaryColor), // Custom color
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Image.asset(
          'assets/images/app_logo.png',
          width: 78,
          height: 50,
        ),
      ),
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.casino), label: 'CASINO'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'DEPORTES'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'FAVORITOS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports), label: 'JUGAR'),
          BottomNavigationBarItem(icon: Icon(Icons.expand), label: 'EXPANDIR'),
        ],
      ),
    );
  }
}
