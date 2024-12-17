import 'package:emcomerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 240,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            // title
            const Text(
              'Brand new ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            // subtitle
            const Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 48,
            ),

            //start now button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
