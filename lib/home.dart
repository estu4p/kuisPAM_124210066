import 'package:flutter/material.dart';
import 'package:kuis_pam/HomeButton.dart';
import 'package:kuis_pam/lingkaran.dart';
import 'package:kuis_pam/persegi.dart';
import 'package:kuis_pam/segitiga.dart';
import 'package:kuis_pam/trapesium.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        // elevation: 5,
        shape: const Border(
            bottom: BorderSide(
          color: Colors.black,
          width: 2,
        )),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Trapesium
          HomeButton(
            name: 'Trapesium',
            link: Trapesium(),
          ),
          SizedBox(height: 30),
          // Segitiga
          HomeButton(
            name: 'Segitiga',
            link: Segitiga(),
          ),
          SizedBox(height: 30),
          // Lingkaran
          HomeButton(
            name: 'Lingkaran',
            link: Lingkaran(),
          ),
          SizedBox(height: 30),
          // Persegi Panjang
          HomeButton(
            name: 'Persegi',
            link: Persegi(),
          ),
        ],
      )),
    );
  }
}
