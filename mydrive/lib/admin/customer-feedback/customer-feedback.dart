import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class CustomerFeedback extends StatefulWidget {
  const CustomerFeedback({super.key});

  @override
  State<CustomerFeedback> createState() => _CustomerFeedbackState();
}

class _CustomerFeedbackState extends State<CustomerFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Analytics and Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Customer Feedback')],
        ),
      ),
    );
  }
}
