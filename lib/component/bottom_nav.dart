
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:zephyr_tech_solutions_taks/screens/home_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/main_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/more_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/profile_screen.dart';
import 'package:zephyr_tech_solutions_taks/screens/wallet_screen.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 2; // Central button by default

  final List<Widget> _pages = [
    const HomeScreen(),
    const WalletScreen(),
    const MainScreen(),
    const ProfileScreen(),
    const MoreScreen(),
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
        activeColor: const Color(0xFF2136F3),
        color: Colors.grey,
        items: const [
          TabItem(icon: Icons.home_outlined, title: 'Home'),
          TabItem(icon: Icons.account_balance_wallet_outlined, title: 'Wallet'),
          TabItem(icon: Icons.radio_button_checked_outlined, title: 'Main'),
          TabItem(icon: Icons.person_2_outlined, title: 'Profile'),
          TabItem(icon: Icons.more_horiz, title: 'More'),
        ],
        onTap: (int index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}