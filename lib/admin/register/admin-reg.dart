import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdminReg extends StatefulWidget {
  const AdminReg({super.key});

  @override
  State<AdminReg> createState() => _AdminRegState();
}

class _AdminRegState extends State<AdminReg> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Text('Admin Register'),
    );
  }
}