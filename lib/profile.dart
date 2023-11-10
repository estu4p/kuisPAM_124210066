import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Profile',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipOval(
                  child: Image.asset('assets/profile.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Reza Pramudya A P',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '124210066',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Magelang, 29 Maret 2003',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Hobi : Mermain Bola',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
