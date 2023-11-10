import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String name;
  final Widget link;

  const HomeButton({
    super.key,
    required this.name,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => link),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
        fixedSize: const Size(300, 80),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        shadowColor: Colors.yellow,
      ),
      child: Text(name),
    );
  }
}
