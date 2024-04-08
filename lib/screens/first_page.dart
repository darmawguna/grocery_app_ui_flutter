import 'package:flutter/material.dart';
import 'package:grocery_app_v2/screens/home_page.dart';
import 'package:grocery_app_v2/utils/color.dart';

class FirtsPage extends StatelessWidget {
  const FirtsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/fourth.png',
              height: 300,
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Fast delivery at \n your doorstep',
                style: TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Home delivery and online reservation \n system for restaurants & cafe',
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: const Text(
                  'Lets explore',
                  style: TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: primaryColor,
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
