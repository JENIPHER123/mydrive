import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ClientReg extends StatefulWidget {
  const ClientReg({super.key});

  @override
  State<ClientReg> createState() => _ClientRegState();
}

class _ClientRegState extends State<ClientReg> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final confirmController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
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
                    /* find out why this controller isnt working */
                    /*  controller: confirm Controller, */
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
                  onPressed: () {
                     FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text(
                          "Registration Successful!!!",
                          style: TextStyle(color: Colors.grey),
                        ),
                        content: const Image(
                            image: AssetImage('assets/images/success1.gif')),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                              Navigator.pushNamed(context, 'client-login');
                            },
                            child: Container(
                              color: Color.fromARGB(255, 131, 129, 129),
                              padding: const EdgeInsets.all(14),
                              child: const Text(
                                "okay",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                    minimumSize: const Size(310, 55),
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
        ),
      ),
    );
  }
}
