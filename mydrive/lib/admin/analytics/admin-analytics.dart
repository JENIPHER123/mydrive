import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class AdminAnalytics extends StatefulWidget {
  const AdminAnalytics({super.key});

  @override
  State<AdminAnalytics> createState() => _AdminAnalyticsState();
}

class _AdminAnalyticsState extends State<AdminAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Analytics and Data'),
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
                    Navigator.pushNamed(context, 'admin-profits');
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
                    Navigator.pushNamed(context, 'admin-assets');
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
                    Navigator.pushNamed(context, 'admin-liabilities');
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
                    Navigator.pushNamed(context, 'customer-feedback');
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
