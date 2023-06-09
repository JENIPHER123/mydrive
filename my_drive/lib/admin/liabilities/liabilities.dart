import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/sidenav/sidenav.dart';

class Liabilities extends StatefulWidget {
  const Liabilities({super.key});

  @override
  State<Liabilities> createState() => _LiabilitiesState();
}

class _LiabilitiesState extends State<Liabilities> {
  /* variable declaration */
  final lossamountController = TextEditingController();
  final lossperiodController = TextEditingController();
  final lossyearController = TextEditingController();

  /* function for creating data */
  Future createLoss({
    required String loss_amount,
    required String loss_period,
    required String loss_year,
  }) async {
    final docUser = FirebaseFirestore.instance
        .collection('liabilities_losses')
        .doc('asset trial');
    final json = {
      'loss_amount': loss_amount,
      'loss_period': loss_period,
      'loss_year': loss_year,
    };
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Analytics and Data'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'admin-analytics');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 139, 22, 14),
                  minimumSize: const Size(300, 60),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 250, 249, 249),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Explore More Analytical Data',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Good Afternoon',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Jenipher',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              const Text(
                "company's Liabilities and losses",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
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
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    backgroundColor:
                                        Color.fromARGB(255, 194, 193, 193),
                                    content: Stack(
                                      children: <Widget>[
                                        Form(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Positioned(
                                                    top: -190.0,
                                                    child: InkResponse(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const CircleAvatar(
                                                        child:
                                                            Icon(Icons.close),
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
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        lossamountController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Loss Amount',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
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
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        lossyearController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText: 'Year',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
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
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        lossperiodController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText: 'Year',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
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
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      final loss_year =
                                                          lossyearController
                                                              .text;
                                                      final loss_period =
                                                          lossperiodController
                                                              .text;
                                                      final loss_amount =
                                                          lossamountController
                                                              .text;

                                                      createLoss(
                                                        loss_amount:
                                                            loss_amount,
                                                        loss_period:
                                                            loss_period,
                                                        loss_year: loss_year,
                                                      );
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 121, 22, 15),
                                                      minimumSize:
                                                          const Size(300, 50),
                                                      shape:
                                                          RoundedRectangleBorder(
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
                        child: Icon(Icons.analytics),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Add Liability',
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
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {},
                        child: Icon(Icons.money_off_csred),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Filter Year',
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
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {},
                        child: Icon(Icons.house),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Filter Type',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 121, 22, 15),
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  title: Text('First Quarter Of The Year'),
                  subtitle: Row(
                    children: [
                      Text(
                        '2022 TOTAL PROFIT : ',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('33,111,000'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 121, 22, 15),
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  title: Text('Second Quarter Of the year'),
                  subtitle: Row(
                    children: [
                      Text(
                        '2022 TOTAL PROFIT : ',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('2,340,222'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 121, 22, 15),
                    child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  title: Text('Third Quarter Of The Year'),
                  subtitle: Row(
                    children: [
                      Text(
                        '2022 TOTAL PROFIT : ',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('12,340,000'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 121, 22, 15),
                    child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  title: Text('Fourth Quarter Of The Year'),
                  subtitle: Row(
                    children: [
                      Text(
                        '2022 TOTAL PROFIT : ',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('45,333,040'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
