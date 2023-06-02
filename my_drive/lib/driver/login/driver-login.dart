import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DriverLogin extends StatefulWidget {
  const DriverLogin({super.key});

  @override
  State<DriverLogin> createState() => _DriverLoginState();
}

class _DriverLoginState extends State<DriverLogin> {
  /* initializing firebase */
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  /* login function */
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print('No User found for that Email');
        /* error dialog box for wrong client details entered */
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Error!!"),
            content: const Text("You have entered wrong details."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  color: const Color.fromARGB(255, 121, 22, 15),
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
      }
    }
    return user;
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                "Welcome back..(Driver Login) ",
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
                  controller: emailController,
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
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 158, 157, 157)),
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

              /* forgot password */
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'driver-forgot');
                        },
                        child: const Text(
                          'Forgot Password...',
                          style: TextStyle(
                              color: Color.fromARGB(255, 131, 129, 128),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),

              /* sign in button */
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  User? user = await loginUsingEmailPassword(
                      email: emailController.text,
                      password: passwordController.text,
                      context: context);
                  print(user);
                  if (user != null) {
                    Navigator.pushNamed(context, 'driver-dash');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                  minimumSize: const Size(310, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Login'),
              ),

              /* don't have an account register */
              /* don't have an account register */
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'driver-reg');
                      },
                      child: const Text(
                        "Register Here...",
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
    );
  }
}
