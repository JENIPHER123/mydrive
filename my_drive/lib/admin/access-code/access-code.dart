import 'package:flutter/material.dart';

class AccessCode extends StatefulWidget {
  const AccessCode({super.key});

  @override
  State<AccessCode> createState() => _AccessCodeState();
}

class _AccessCodeState extends State<AccessCode> {
  final accesscodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
                "Welcome back..(Admin Login) ",
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
                  controller: accesscodeController,
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(158, 157, 157, 1),
                      ),
                      hintText: 'Access Code',
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
                  var name = accesscodeController.text;
                  print(name);
                  if (name == '4488') {
                    Navigator.pushNamed(context, 'admin-login');
                  } else {
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title: const Text(
                                "Error!!!",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 121, 22, 15),
                                ),
                              ),
                              content: const Text('Wrong access code entered'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  
                                  },
                                  child: Container(
                                    color:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    padding: const EdgeInsets.all(14),
                                    child: const Text(
                                      "okay",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                  minimumSize: const Size(310, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Confirm Code'),
              ),

              /* don't have an account register */
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
