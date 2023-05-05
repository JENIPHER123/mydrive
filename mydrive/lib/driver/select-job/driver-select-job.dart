import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverSelectJob extends StatefulWidget {
  const DriverSelectJob({super.key});

  @override
  State<DriverSelectJob> createState() => _DriverSelectJobState();
}

class _DriverSelectJobState extends State<DriverSelectJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('My Jobs.'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Good Afternoon, Kimanzi123',
                        style: TextStyle(
                            fontFamily: AutofillHints.addressState,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      const Text(
                        'What would you like to do?',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(60, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60))),
                                onPressed: () {},
                                child: Icon(Icons.analytics),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Select',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(60, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60))),
                                onPressed: () {},
                                child: Icon(Icons.money_off_csred),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Manage',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(60, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60))),
                                onPressed: () {},
                                child: Icon(Icons.house),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Rating',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(60, 60),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60))),
                                onPressed: () {},
                                child: Icon(Icons.person),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Personal Info',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 10, 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Color.fromARGB(
                                                    255, 194, 193, 193),
                                                content: Stack(
                                                  children: <Widget>[
                                                    Form(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Positioned(
                                                              top: -190.0,
                                                              child:
                                                                  InkResponse(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child:
                                                                    const CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          121,
                                                                          22,
                                                                          15),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              /* controller: passwordController, */
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Enter Code',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'New Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Confirm Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        121,
                                                                        22,
                                                                        15),
                                                                minimumSize:
                                                                    const Size(
                                                                        300,
                                                                        50),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                              ),
                                                              child: const Text(
                                                                  'Reset'),
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
                                      icon: const Icon(
                                        Icons.more_horiz_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30),
                                      color: Color.fromARGB(255, 236, 199, 199),
                                    ),
                                    child: const Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        'MD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 83, 8, 8)),
                                      )),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 0),
                                        child: Text(
                                          'Nairobi Corvet Job',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '1000KSH per HOUR',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 10, 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Color.fromARGB(
                                                    255, 194, 193, 193),
                                                content: Stack(
                                                  children: <Widget>[
                                                    Form(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Positioned(
                                                              top: -190.0,
                                                              child:
                                                                  InkResponse(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child:
                                                                    const CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          121,
                                                                          22,
                                                                          15),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              /* controller: passwordController, */
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Enter Code',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'New Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Confirm Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        121,
                                                                        22,
                                                                        15),
                                                                minimumSize:
                                                                    const Size(
                                                                        300,
                                                                        50),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                              ),
                                                              child: const Text(
                                                                  'Reset'),
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
                                      icon: const Icon(
                                        Icons.more_horiz_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30),
                                      color: Color.fromARGB(255, 236, 199, 199),
                                    ),
                                    child: const Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        'MD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 83, 8, 8)),
                                      )),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 0),
                                        child: Text(
                                          'Nairobi Corvet Job',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '1000KSH per HOUR',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 10, 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Color.fromARGB(
                                                    255, 194, 193, 193),
                                                content: Stack(
                                                  children: <Widget>[
                                                    Form(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Positioned(
                                                              top: -190.0,
                                                              child:
                                                                  InkResponse(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child:
                                                                    const CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          121,
                                                                          22,
                                                                          15),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              /* controller: passwordController, */
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Enter Code',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'New Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Confirm Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        121,
                                                                        22,
                                                                        15),
                                                                minimumSize:
                                                                    const Size(
                                                                        300,
                                                                        50),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                              ),
                                                              child: const Text(
                                                                  'Reset'),
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
                                      icon: const Icon(
                                        Icons.more_horiz_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30),
                                      color: Color.fromARGB(255, 236, 199, 199),
                                    ),
                                    child: const Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        'MD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 83, 8, 8)),
                                      )),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 0),
                                        child: Text(
                                          'Nairobi Corvet Job',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '1000KSH per HOUR',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 10, 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Color.fromARGB(
                                                    255, 194, 193, 193),
                                                content: Stack(
                                                  children: <Widget>[
                                                    Form(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Positioned(
                                                              top: -190.0,
                                                              child:
                                                                  InkResponse(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                child:
                                                                    const CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          121,
                                                                          22,
                                                                          15),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              /* controller: passwordController, */
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Enter Code',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'New Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                      hintText:
                                                                          'Confirm Password',
                                                                      hintStyle: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              201,
                                                                              199,
                                                                              199)),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              216,
                                                                              211,
                                                                              210),
                                                                        ),
                                                                      ),
                                                                      fillColor:
                                                                          Colors
                                                                              .white,
                                                                      filled:
                                                                          true),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed: () {},
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        121,
                                                                        22,
                                                                        15),
                                                                minimumSize:
                                                                    const Size(
                                                                        300,
                                                                        50),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                              ),
                                                              child: const Text(
                                                                  'Reset'),
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
                                      icon: const Icon(
                                        Icons.more_horiz_rounded,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30),
                                      color: Color.fromARGB(255, 236, 199, 199),
                                    ),
                                    child: const Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        'MD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 83, 8, 8)),
                                      )),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 0),
                                        child: Text(
                                          'Nairobi Corvet Job',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '1000KSH per HOUR',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
