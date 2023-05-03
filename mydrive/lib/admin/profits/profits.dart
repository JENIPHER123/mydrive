import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class Profits extends StatefulWidget {
  const Profits({super.key});

  @override
  State<Profits> createState() => _ProfitsState();
}

class _ProfitsState extends State<Profits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Analytics and Data'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Good Afternoon',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Jenipher',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              const Text(
                "company's profit margin",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
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
                    children: const [
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
              Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
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
                    children: const [
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
              Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
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
                    children: const [
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
              Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
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
                    children: const [
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
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'admin-analytics');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 139, 22, 14),
                  minimumSize: const Size(370, 70),
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
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
