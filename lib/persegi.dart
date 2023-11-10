import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  const Persegi({super.key});

  @override
  State<Persegi> createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  TextEditingController _sisiController = TextEditingController();
  double _luas = 0.0;

  void _hitungLuas() {
    double sisi = double.tryParse(_sisiController.text) ?? 0.0;
    double luas = sisi * sisi;

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
          'Persegi',
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
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Panjang Sisi'),
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
              'Luas Persegi: $_luas',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
