import 'package:flutter/material.dart';

import '../widgets/sidenav/sidenav.dart';

class ClientDash extends StatefulWidget {
  const ClientDash({super.key});

  @override
  State<ClientDash> createState() => _ClientDashState();
}

class _ClientDashState extends State<ClientDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ClientSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Client Dashboard'),
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
                                child: Icon(Icons.money_off_csred),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Ranking',
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
