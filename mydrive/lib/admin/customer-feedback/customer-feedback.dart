import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/button1/button1.dart';
import '../widgets/button3/button3.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  'Explore Analytical Data',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                "view customer feedback",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              const Button3(),
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
