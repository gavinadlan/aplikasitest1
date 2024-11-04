import 'package:flutter/material.dart';
import 'sesi7_page.dart';
import 'sesi4_page.dart';
import 'sesi5_page.dart';
import 'sesi6_page.dart'; // Add this import for Sesi6

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sesi 4, 5, 6 & 7"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                const Text("Coba Klik Saya"),
                SizedBox(height: 10), // Jarak antara teks dan tombol pertama
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi4();
                        },
                      ),
                    );
                    print("Tombol Sesi 4 Di Klik");
                  },
                  child: const Text("Sesi 4"),
                ),
                SizedBox(height: 10), // Jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi5();
                        },
                      ),
                    );
                    print("Tombol Sesi 5 Di Klik");
                  },
                  child: const Text("Sesi 5"),
                ),
                SizedBox(height: 10), // Jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi6(); // Now points to Sesi6
                        },
                      ),
                    );
                    print("Tombol Sesi 6 Di Klik");
                  },
                  child: const Text("Sesi 6"),
                ),
                SizedBox(height: 10), // Jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi7(); // Now points to Sesi7
                        },
                      ),
                    );
                    print("Tombol Sesi 7 Di Klik");
                  },
                  child: const Text("Sesi 7"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
