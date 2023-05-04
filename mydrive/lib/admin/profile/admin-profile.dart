import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({super.key});

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('View My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70, // Image radius
              backgroundImage: AssetImage('images/ppl2.jpg'),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      '#',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Categoty',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Value/Description',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text('Name')),
                    DataCell(Text('Jenipher A. Onyango')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text('User Type')),
                    DataCell(Text('Admin')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '3',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text('Username')),
                    DataCell(Text('JENIPHER123')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '4',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text('ID')),
                    DataCell(Text('354241234')),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 40),
                    backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'See More',
                      /* style: TextStyle(
                        color: const Color.fromARGB(255, 121, 22, 15),
                      ), */
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 40),
                    backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Edit'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
