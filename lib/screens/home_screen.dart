import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screen = [
    // Add your screen widgets here
    HomeScreen(),
    

  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}