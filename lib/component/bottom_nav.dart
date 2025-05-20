import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:zephyr_tech_solutions_taks/screens/home_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/main_scren.dart';
import 'package:zephyr_tech_solutions_taks/screens/more_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/profile_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/wallet_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavDemo(),
    );
  }
}

class BottomNavDemo extends StatefulWidget {
  @override
  _BottomNavDemoState createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  int _selectedIndex = 2; // Central button by default

  final _pages = [
    HomeScreen(),
    WalletScreen(),
    MainScren(),
    ProfileScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        
        style: TabStyle.reactCircle,
        initialActiveIndex: _selectedIndex,
        backgroundColor: Colors.white,
        height: 60,
        top: -10,
        curve: Curves.easeInOut,
        elevation: 0,
        activeColor: const Color.fromARGB(255, 33, 54, 243),
        color: Colors.grey,
        items: [
          TabItem(icon: Icons.home_outlined, title: ''),
          TabItem(icon: Icons.account_balance_wallet_outlined, title: ''),
          TabItem(icon: Icon(Icons.radio_button_checked_outlined, color: const Color.fromARGB(255, 36, 200, 255)), title: ''),
          TabItem(icon: Icons.person_2_outlined, title: ''),
          TabItem(icon: Icons.more_horiz, title: ''),
        ],
        onTap: (int i) => setState(() => _selectedIndex = i),
      ),
    );
  }
}
