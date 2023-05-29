import 'package:flutter/material.dart';

import '../widgets/sidenav/sidenav.dart';

class AdminLanding extends StatefulWidget {
  const AdminLanding({super.key});

  @override
  State<AdminLanding> createState() => _AdminLandingState();
}

class _AdminLandingState extends State<AdminLanding> {
  bool light = true;
  bool light1 = true;
  bool light2 = true;
  bool light3 = true;
  bool light4 = true;
  bool light5 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('View App Settings'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 35, horizontal: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              'CONFIGURE SETTINGS',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 194, 189, 189),
                                  fontWeight: FontWeight.bold,
                                  fontFamily:
                                      AutofillHints.addressCityAndState),
                            ),
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ListTile(
                              title: Text('First Quarter Of The Year'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    '2022 TOTAL PROFIT : ',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('33,111,000'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light5,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light5 = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ListTile(
                              title: Text('First Quarter Of The Year'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    '2022 TOTAL PROFIT : ',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('33,111,000'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light1,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light1 = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ListTile(
                              title: Text('First Quarter Of The Year'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    '2022 TOTAL PROFIT : ',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('33,111,000'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light4,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light4 = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ListTile(
                              title: Text('First Quarter Of The Year'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    '2022 TOTAL PROFIT : ',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('33,111,000'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light2,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light2 = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: ListTile(
                              title: Text('First Quarter Of The Year'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    '2022 TOTAL PROFIT : ',
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('33,111,000'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light3,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          light3 = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                        ],
                      ),
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