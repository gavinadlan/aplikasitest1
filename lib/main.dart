import 'package:flutter/material.dart';
import 'sesi4_page.dart';
import 'sesi5_page.dart';
import 'sesi6_page.dart'; 
import 'sesi7_page.dart';
import 'custom_button.dart'; 

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false, // Menghilangkan label "DEBUG"
  ));
}

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
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi4(); // Pindah ke Sesi4
                        },
                      ),
                    );
                    print("Tombol Sesi 4 Di Klik");
                  },
                  child: const Text("Sesi 4"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi5(); // Pindah ke Sesi5
                        },
                      ),
                    );
                    print("Tombol Sesi 5 Di Klik");
                  },
                  child: const Text("Sesi 5"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi6(); // Pindah ke Sesi6
                        },
                      ),
                    );
                    print("Tombol Sesi 6 Di Klik");
                  },
                  child: const Text("Sesi 6"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sesi7(); // Pindah ke Sesi7
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
