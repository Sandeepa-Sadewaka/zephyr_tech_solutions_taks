import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zephyr_tech_solutions_taks/component/friend_card.dart';
import 'package:zephyr_tech_solutions_taks/component/option_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hi Ehi,',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications_none_outlined, size: 30),
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Balance Card
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1,234.00',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/flag1.png",
                        ),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'GHS',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            Text(
              'Here are some things you can do',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                OptionCard(
                  icon: Icon(Icons.send_to_mobile_outlined),
                  title: 'Pay someone',
                  description: 'To  wallet, bank or mobile number',
                  color: const Color.fromARGB(255, 237, 237, 237),
                ),
                Spacer(),
                OptionCard(
                  icon: Icon(Icons.attach_money_outlined),
                  title: 'Request money',
                  description: 'Request money from OrboPay users',
                  color: const Color.fromARGB(123, 167, 198, 183),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                OptionCard(
                  icon: Icon(Icons.mobile_friendly_outlined),
                  title: 'Buy airtime',
                  description: "Top-up or send airtime acrosss Africa",
                  color: const Color.fromARGB(255, 237, 237, 237),
                ),
                Spacer(),
                OptionCard(
                  icon: Icon(Icons.payment_outlined),
                  title: "Pay bill",
                  description: 'Zero transaction fees when you pay',
                  color: const Color.fromARGB(255, 237, 237, 237),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Your favourite people",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 225, 224, 224),
                        ),
                        child: Icon(Icons.add, size: 30, color: Colors.grey),
                      ),
                      SizedBox(height: 14),
                      Text(
                        "Add",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      FriendCard(
                        image_url: "assets/images/girl.png",
                        name: "Grace L.",
                      ),
                    ],
                  ),
                  SizedBox(width: 15),

                  Column(
                    children: [
                      FriendCard(
                        image_url: "assets/images/LA.png",
                        name: "Lawrence A.",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
