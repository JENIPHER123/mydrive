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
        title: Text('testing'),
      ),
      body: Column(
        children: const [
          Text('Testing Code Home'),
        ],
      ),
    );
  }
}
