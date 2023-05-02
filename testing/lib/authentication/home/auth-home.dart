import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testing/sidebar.dart';

class AuthHome extends StatefulWidget {
  const AuthHome({super.key});

  @override
  State<AuthHome> createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideNavbar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: Text('Analytics and Data'),
      ),
      body: Center(
        child: GridView(
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 14, mainAxisSpacing: 14),
            children: [
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 204, 202, 202), width: 3)),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                    child: Column(
                      children: const [
                        Image(image: AssetImage('images/chart3.gif')),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Our Profit Margins',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 204, 202, 202), width: 3)),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage('images/chart4.gif')),
                        Text(
                          'Manage Our Assets',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 204, 202, 202), width: 3)),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                    child: Column(
                      children: const [
                        Image(image: AssetImage('images/liability1.gif')),
                        Text(
                          'Current Liabilities ',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color.fromARGB(255, 204, 202, 202), width: 3)),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Column(
                    children: const [
                      Image(image: AssetImage('images/feedback1.gif')),
                      Text(
                        'customer Feedback',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
