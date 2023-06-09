import 'package:flutter/material.dart';

import '../widgets/sidenav/sidenav.dart';

class DriverLanding extends StatefulWidget {
  const DriverLanding({super.key});

  @override
  State<DriverLanding> createState() => _DriverLandingState();
}

class _DriverLandingState extends State<DriverLanding> {
  bool light = true;
  bool light1 = true;
  bool light2 = true;
  bool light3 = true;
  bool light4 = true;
  bool light5 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('View App Settings'),
      ),
      body:Center(
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
                              title: Text('Alerts and Notifications'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    'STAY UPDATED ALL DAY: ',
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(' 2023 '),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light5,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        if (light5 == false) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Alerts and Notification ",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Alerts and notifications turned on!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('alerts on');
                                        }
                                        if (light5 == true) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Alerts and Notifications",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Alerts and Notifications turned off!!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('not on');
                                        }
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
                              title: Text('Add Email To Mailing List'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    'ADD MYSELF TO  LIST : ',
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Text('2023'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light1,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        if (light1 == false) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Add Email to Mailing List",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Your email will now be added to our mailing list!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('alerts on');
                                        }
                                        if (light1 == true) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Add Email To Mailing List",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Your Email is now removed from our mailing list!!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('not on');
                                        }
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
                              title: const Text('Automatic App Updates'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    'ACTIVATE AUTO UPDATE : ',
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Text('2023'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light4,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        if (light4 == false) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Automatic App Updates ",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Automatic Updates is now on!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('alerts on');
                                        }
                                        if (light4 == true) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Automatic App Updates",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Automatic Updates is turned off!!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('not on');
                                        }
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
                              title: const Text('Hide My Profile'),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    'HIDE PROFILE TO OTHERS : ',
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  const Text('2023'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Switch(
                                      // This bool value toggles the switch.
                                      value: light2,
                                      activeColor: Colors.red,
                                      onChanged: (bool value) {
                                        // This is called when the user toggles the switch.
                                        if (light2 == false) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Hide My Profile ",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Your profile can be seen by other users!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('alerts on');
                                        }
                                        if (light2 == true) {
                                          showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                    title: const Text(
                                                      "Hide My Profile",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 121, 22, 15),
                                                      ),
                                                    ),
                                                    content: const Text(
                                                        'Your Profile is now hidden to other users!!!..'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(ctx)
                                                              .pop();
                                                        },
                                                        child: Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 121, 22, 15),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(14),
                                                          child: const Text(
                                                            "okay",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ));
                                          print('not on');
                                        }
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
