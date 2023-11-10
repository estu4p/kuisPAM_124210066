import 'package:flutter/material.dart';
import 'dart:math';

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  TextEditingController _jariJariController = TextEditingController();
  double _luas = 0.0;

  void _hitungLuas() {
    double jariJari = double.tryParse(_jariJariController.text) ?? 0.0;
    double luas = pi * jariJari * jariJari;

    setState(() {
      _luas = luas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Lingkaran',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        // elevation: 5,
        shape: const Border(
            bottom: BorderSide(
          color: Colors.black,
          width: 2,
        )),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _jariJariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Jari-Jari'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                _hitungLuas();
              },
              child: Text('Hitung Luas'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Luas Lingkaran: $_luas',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
