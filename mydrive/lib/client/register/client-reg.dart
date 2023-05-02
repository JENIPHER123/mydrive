import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientReg extends StatefulWidget {
  const ClientReg({super.key});

  @override
  State<ClientReg> createState() => _ClientRegState();
}

class _ClientRegState extends State<ClientReg> {
  @override
  Widget build(BuildContext context) {
    /* login details controller */
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final emailController = TextEditingController();

    /* sign in method/function */
    void userSignIn() {}
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* icon and/or logo */
            const Icon(
              Icons.lock,
              color: Color.fromARGB(255, 121, 22, 15),
              size: 80,
            ),
            const SizedBox(
              height: 20,
            ),

            /* welcome back you've been missed message */
            const Text(
              "Welcome back..(Client Register) ",
              style: TextStyle(
                  color: Color.fromARGB(255, 121, 120, 120),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            /* username textfield */
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 157, 157, 1),
                    ),
                    hintText: 'Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 216, 211, 210),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 223, 221, 221),
                    filled: true),
              ),
            ),

            /* password textfield */
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 157, 157, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 216, 211, 210),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 223, 221, 221),
                    filled: true),
              ),
            ),
            /* password textfield */
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 157, 157, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 216, 211, 210),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 223, 221, 221),
                    filled: true),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: TextField(
                /*  controller: passwordController, */
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 157, 157, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 216, 211, 210),
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 223, 221, 221),
                    filled: true),
              ),
            ),
            /* sign in button */
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Register'),
            ),

            /* don't have an account register */
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'client-login');
                    },
                    child: const Text(
                      "Login Here...",
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 22, 15),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'routing');
                  },
                  child: const Text(
                    "Back To Home...",
                    style: TextStyle(
                        color: Color.fromARGB(255, 121, 22, 15),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
