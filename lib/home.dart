import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ini adalah Halaman Utama'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi tombol
              },
              child: Text('Tombol Utama'),
            ),
          ],
        ),
      ),
    );
  }
}
