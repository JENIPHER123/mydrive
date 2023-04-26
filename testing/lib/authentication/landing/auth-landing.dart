import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthLanding extends StatefulWidget {
  const AuthLanding({super.key});

  @override
  State<AuthLanding> createState() => _AuthLandingState();
}

class _AuthLandingState extends State<AuthLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              const Image(
              image: AssetImage('assets/logo/logo.jpg'),
              width: 200,
            ),  
            const SizedBox(
              height: 20,
            ),
            const Text(
              'MyDrive Test Mode trial',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 73, 72, 71)),
            ),
            const Center(
              child: Text(
                'Testing MyDrive',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'auth-login');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 167, 21, 11),
                  padding: const EdgeInsets.all(20),
                  elevation: 30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
              child: const Text(
                'Start Testing',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
