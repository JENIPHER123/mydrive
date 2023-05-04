import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mydrive/admin/widgets/sidenav/sidenav.dart';

class AdminDash extends StatefulWidget {
  const AdminDash({super.key});

  @override
  State<AdminDash> createState() => _AdminDashState();
}

class _AdminDashState extends State<AdminDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Admin Dashboard'),
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
                                'Analytics',
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
                                'Profits',
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
                                'Liabilities',
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
                        color: Color.fromARGB(255, 248, 241, 241),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
                                  color: const Color.fromARGB(255, 121, 22, 15),
                                ),
                              ),
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: const Color.fromARGB(255, 121, 22, 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: const [
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
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          children: const [
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
                        Row(
                          children: const [
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'No Of Transactions',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: const Color.fromARGB(
                                          255, 121, 22, 15),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '145,000.000',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: const Color.fromARGB(
                                          255, 121, 22, 15),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
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
