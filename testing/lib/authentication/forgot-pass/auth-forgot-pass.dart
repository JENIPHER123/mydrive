import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthForgot extends StatefulWidget {
  const AuthForgot({super.key});

  @override
  State<AuthForgot> createState() => _AuthForgotState();
}

class _AuthForgotState extends State<AuthForgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.lock_clock_rounded,
                  color: Color.fromARGB(255, 121, 22, 15),
                  size: 130,
                ),
              ),
              const Center(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "A password reset code will be sent to your email to reset your password. If you don't get a code within a few minutes, please re-try.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: TextField(
                  /*   controller: passwordController, */
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 201, 199, 199)),
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
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'auth-login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 249, 249),
                      minimumSize: const Size(155, 60),
                      side: const BorderSide(
                        color: const Color.fromARGB(255, 121, 22, 15),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 121, 22, 15),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor:
                                  Color.fromARGB(255, 194, 193, 193),
                              content: Stack(
                                children: <Widget>[
                                  Form(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Positioned(
                                            top: -190.0,
                                            child: InkResponse(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const CircleAvatar(
                                                child: Icon(Icons.close),
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 121, 22, 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: TextField(
                                            /* controller: passwordController, */
                                            decoration: InputDecoration(
                                                hintText: 'Enter Code',
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 201, 199, 199)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 216, 211, 210),
                                                  ),
                                                ),
                                                fillColor: Colors.white,
                                                filled: true),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: 'New Password',
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 201, 199, 199)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 216, 211, 210),
                                                  ),
                                                ),
                                                fillColor: Colors.white,
                                                filled: true),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: 'Confirm Password',
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 201, 199, 199)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 216, 211, 210),
                                                  ),
                                                ),
                                                fillColor: Colors.white,
                                                filled: true),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 121, 22, 15),
                                              minimumSize: const Size(300, 50),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            child: const Text('Reset'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                      minimumSize: const Size(155, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28)),
                    ),
                    child: const Text('Submit'),
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
