import 'package:flutter/material.dart';

class MainLanding extends StatefulWidget {
  const MainLanding({super.key});

  @override
  State<MainLanding> createState() => _MainLandingState();
}

class _MainLandingState extends State<MainLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/logo/logo.jpg'),
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome to MyDrive ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 102, 101, 101),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'MyDrive App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'routing');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}