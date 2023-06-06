import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverDash extends StatefulWidget {
  const DriverDash({super.key});

  @override
  State<DriverDash> createState() => _DriverDashState();
}

class _DriverDashState extends State<DriverDash> {
  /* variable declaration */
  final customernameController = TextEditingController();
  final customeridController = TextEditingController();
  final customercommentController = TextEditingController();
  final customertypeController = TextEditingController();
  final customeremailController = TextEditingController();
  final customerphoneController = TextEditingController();

  /* function for creating data */
  Future customerFeedback(
      {required String customer_name,
      required String customer_id,
      required String customer_comment,
      required String customer_type,
      required String customer_email,
      required String customer_phone}) async {
    final docUser = FirebaseFirestore.instance
        .collection('customer_feedback')
        .doc('Feedback  trial');
    final json = {
      'customer_name': customer_name,
      'customer_id': customer_id,
      'customer_comment': customer_comment,
      'customer_type': customer_type,
      'customer_email': customer_email,
      'customer_phone': customer_phone,
    };
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Driver Dashboard'),
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
                        'Good Afternoon, Jenipher ',
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                'My Jobs',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
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
                                'History',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
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
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                            backgroundColor: Color.fromARGB(
                                                255, 194, 193, 193),
                                            content: Stack(
                                              children: <Widget>[
                                                Form(
                                                  child: SingleChildScrollView(
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
                                                            child: InkResponse(
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customernameController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Customer Name',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customeridController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Customer ID',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customercommentController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Year',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customeremailController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Customer Email',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customerphoneController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Customer Phone',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: TextField(
                                                            controller:
                                                                customertypeController,
                                                            decoration:
                                                                const InputDecoration(
                                                                    hintText:
                                                                        'Customer Type',
                                                                    hintStyle: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
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
                                                                        color: Colors
                                                                            .white,
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
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              final customer_name =
                                                                  customernameController
                                                                      .text;
                                                              final customer_id =
                                                                  customeridController
                                                                      .text;
                                                              final customer_comment =
                                                                  customercommentController
                                                                      .text;
                                                              final customer_email =
                                                                  customeremailController
                                                                      .text;
                                                              final customer_phone =
                                                                  customerphoneController
                                                                      .text;
                                                              final customer_type =
                                                                  customertypeController
                                                                      .text;
                                                              customerFeedback(
                                                                  customer_name:
                                                                      customer_name,
                                                                  customer_type:
                                                                      customer_type,
                                                                  customer_email:
                                                                      customer_email,
                                                                  customer_phone:
                                                                      customer_phone,
                                                                  customer_comment:
                                                                      customer_comment,
                                                                  customer_id:
                                                                      customer_id);
                                                              Navigator.of(ctx)
                                                                  .pop();
                                                            },
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
                                                                      300, 50),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                            ),
                                                            child: const Text(
                                                                'Save Details'),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                },
                                child: Icon(Icons.house),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Feedback',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              )
                            ],
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
                                'My Profile',
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
                        color: const Color.fromARGB(255, 248, 241, 241),
                        child: const Padding(
                          padding:
                              EdgeInsetsDirectional.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'My Details',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                'show details',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 121, 22, 15),
                                ),
                              ),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color.fromARGB(255, 121, 22, 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Text(
                        'Major Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: const Color.fromARGB(255, 121, 22, 15),
                  child: ListTile(
                    title: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Welcome To MyDrive',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Total Users',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 238, 168, 168),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '23,000',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 238, 168, 168),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 100,
                            color: Colors.white,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'No Of Transactions',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 121, 22, 15),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '145,000.000',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 121, 22, 15),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
