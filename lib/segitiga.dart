import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({super.key});

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  TextEditingController _alasController = TextEditingController();
  TextEditingController _tinggiController = TextEditingController();
  double _luas = 0.0;

  void _hitungLuas() {
    double alas = double.tryParse(_alasController.text) ?? 0.0;
    double tinggi = double.tryParse(_tinggiController.text) ?? 0.0;
    double luas = 0.5 * alas * tinggi;

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
          'Segitiga',
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
              controller: _alasController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Alas'),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Tinggi'),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                _hitungLuas();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              child: const Text('Hitung Luas'),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Luas Segitiga: $_luas',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
