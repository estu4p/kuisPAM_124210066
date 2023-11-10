import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kuis_pam/home.dart';
import 'package:kuis_pam/profile.dart';

class ButtonNav extends StatefulWidget {
  const ButtonNav({super.key});

  @override
  State<ButtonNav> createState() => _ButtonNavState();
}

class _ButtonNavState extends State<ButtonNav> {
  int index = 0;
  final _pageOption = [
    HomePage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.yellow,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 12),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 2, color: Colors.black)),
          ),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            padding: const EdgeInsets.all(14),
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.yellow.shade700,
            gap: 8,
            curve: Curves.easeInExpo,
            iconSize: 24,
            textSize: 24,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
              GButton(
                icon: Icons.person_outlined,
                text: 'Profil',
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: _pageOption[index],
    );
  }
}
