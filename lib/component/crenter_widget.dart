import 'package:flutter/material.dart';

class CrenterWidget extends StatefulWidget {
  final Icon icon;
  final String title;
  final String description;

  const CrenterWidget({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  State<CrenterWidget> createState() => _CrenterWidgetState();
}

class _CrenterWidgetState extends State<CrenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}