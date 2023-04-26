import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminForgot extends StatefulWidget {
  const AdminForgot({super.key});

  @override
  State<AdminForgot> createState() => _AdminForgotState();
}

class _AdminForgotState extends State<AdminForgot> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(child: Text('Admin Forgot Page'),),
    );
  }
}