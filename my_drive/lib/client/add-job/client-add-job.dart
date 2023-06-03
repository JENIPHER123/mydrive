import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/sidenav/sidenav.dart';

class ClientAddJob extends StatefulWidget {
  const ClientAddJob({super.key});

  @override
  State<ClientAddJob> createState() => _ClientAddJobState();
}

class _ClientAddJobState extends State<ClientAddJob> {
  final cartypeController = TextEditingController();
  final jobareaController = TextEditingController();
  final jobperiodController = TextEditingController();
  final jobstatusController = TextEditingController();
  final payController = TextEditingController();
  final requirementsController = TextEditingController();

/* adding data to firebase database

1.Declare controllers and set in respective textfields
2. create a method for coding the functions and add the required fields
3. add forestore instance
4. map data to json file
5. Push json data to firebase using the previously created firestore instance


Updating Database

1. Use the create methodology outlined above and write over the data

 */

  Future createJob(
      {required String car_type,
      required String client_id,
      required String driver_id,
      required String job_area,
      required String job_period,
      required String job_status,
      required String pay,
      required String resuirements}) async {
    final docUser = FirebaseFirestore.instance.collection('jobs').doc('job_31');
    final json = {
      'car_type': car_type,
      'client_is': client_id,
      'driver_id': driver_id,
      'job_area': job_area,
      'job_period': job_period,
      'job_status': job_status,
      'pay': pay,
      'requirements': resuirements
    };
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ClientSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('My Jobs'),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      const SizedBox(
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
                                    minimumSize: const Size(50, 55),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100))),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                              title: const Center(
                                                child: Text(
                                                  "Add New Job",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 121, 22, 15),
                                                  ),
                                                ),
                                              ),
                                              content: Column(
                                                children: [
                                                  const SizedBox(height: 20),
                                                  TextField(
                                                    controller:
                                                        cartypeController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Car Type',
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextField(
                                                    controller:
                                                        jobareaController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Job Area',
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextField(
                                                    controller:
                                                        jobperiodController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Job Period',
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextField(
                                                    controller:
                                                        jobstatusController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Job Status',
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextField(
                                                    controller: payController,
                                                    decoration:
                                                        const InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Pay',
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  TextField(
                                                    controller:
                                                        requirementsController,
                                                    decoration: InputDecoration(
                                                      hintStyle: TextStyle(
                                                        color: Color.fromRGBO(
                                                            158, 157, 157, 1),
                                                      ),
                                                      hintText: 'Requirements',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 121, 22, 15),
                                                    ),
                                                    onPressed: () {
                                                      final car_type =
                                                          cartypeController
                                                              .text;
                                                      final client_id = '';
                                                      final driver_id = '';
                                                      final job_area =
                                                          jobareaController
                                                              .text;
                                                      final job_period =
                                                          jobperiodController
                                                              .text;
                                                      final job_status =
                                                          jobstatusController
                                                              .text;
                                                      final pay =
                                                          payController.text;
                                                      final requirements =
                                                          cartypeController
                                                              .text;

                                                      createJob(
                                                          car_type: car_type,
                                                          client_id: client_id,
                                                          driver_id: driver_id,
                                                          job_area: job_area,
                                                          job_period:
                                                              job_period,
                                                          job_status:
                                                              job_status,
                                                          pay: pay,
                                                          resuirements:
                                                              requirements);
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    child: const Text(
                                                      'Save details',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ))
                                              ]));
                                },
                                child: Icon(Icons.analytics),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Add Job',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 2),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(50, 55),
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
                                'Drivers',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 2),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(50, 55),
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
                          const SizedBox(width: 2),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
                                    minimumSize: const Size(50, 55),
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
                                'Profile',
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
                                  const Column(
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
                                  const Column(
                                    children: [
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
