import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sesi4 extends StatelessWidget {
  const Sesi4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Sesi 4",
          style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.pink,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ini adalah halaman Sesi4.",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20), // Spacing between the text and email input
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20), // Spacing between email input and button
            ElevatedButton(
              onPressed: () {
                // You can add the email sending functionality here
                print('Email Sent');
              },
              child: const Text('Send Email'),
            ),
          ],
        ),
      ),
    );
  }
}
