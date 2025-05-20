import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendCard extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String image_url;
  final String name;

  // ignore: non_constant_identifier_names
  const FriendCard({required this.image_url, required this.name, super.key});

  @override
  State<FriendCard> createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.image_url),
              radius: 30,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/flag1.png"),
                radius: 10,
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Text(widget.name,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
