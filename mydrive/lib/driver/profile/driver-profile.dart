import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Driver Profile....'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 170,
              color: Color.fromARGB(255, 247, 244, 244),
              child: Center(
                child: CircleAvatar(
                  radius: 78, // Image radius
                  backgroundImage: AssetImage('images/ppl1.jpg'),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 50),
                        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                      ),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                minimumSize:
                                                    const Size(300, 50),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
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
                      child: const Center(
                          child: Text('View More',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ))),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 50),
                        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                      ),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                minimumSize:
                                                    const Size(300, 50),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
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
                      child: const Center(
                          child: Text('Edit Details',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ))),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                  child: Text(
                    'Full Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                    child: Text('Jenipher A. Onyango',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                  child: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                    child: Text('Jenipher#123',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                  child: Text(
                    'Your Phone ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                    child: Text('254 717 639 683 ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                  child: Text(
                    'Your Address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                    child: Text('Nairobi, Buruburu 49595',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                  child: Text(
                    'Your Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 20, 24, 5),
                    child: Text('jeniperkuki@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
