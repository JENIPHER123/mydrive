import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminFailure extends StatefulWidget {
  const AdminFailure({super.key});

  @override
  State<AdminFailure> createState() => _AdminFailureState();
}

class _AdminFailureState extends State<AdminFailure> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Text('Admin Failure Page'),
        ),
      ),
    );
  }
}