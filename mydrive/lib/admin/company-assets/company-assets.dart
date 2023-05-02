import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/sidenav/sidenav.dart';

class CompanyAssets extends StatefulWidget {
  const CompanyAssets({super.key});

  @override
  State<CompanyAssets> createState() => _CompanyAssetsState();
}

class _CompanyAssetsState extends State<CompanyAssets> {
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
          children: const [Text('Company Assets')],
        ),
      ),
    );
  }
}
