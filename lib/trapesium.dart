import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({super.key});

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController _sisiAtasController = TextEditingController();
  TextEditingController _sisiBawahController = TextEditingController();
  TextEditingController _tinggiController = TextEditingController();
  double _luas = 0.0;

  void _hitungLuas() {
    double sisiAtas = double.tryParse(_sisiAtasController.text) ?? 0.0;
    double sisiBawah = double.tryParse(_sisiBawahController.text) ?? 0.0;
    double tinggi = double.tryParse(_tinggiController.text) ?? 0.0;
    double luas = 0.5 * (sisiAtas + sisiBawah) * tinggi;

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
          'Trapesium',
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
              controller: _sisiAtasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Sisi Atas'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _sisiBawahController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Sisi Bawah'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            SizedBox(height: 24.0),
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
              'Luas Trapesium: $_luas',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
