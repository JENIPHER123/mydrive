import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientSideNav extends StatelessWidget {
  const ClientSideNav({super.key});

  @override
  Widget build(BuildContext context) {
     return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/car4.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: const Color.fromARGB(255, 121, 22, 15),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/back1.jpg')),
            ),
          ),
           ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pushNamed(context, 'client-dash');
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Add Job'),
            onTap: () {
              Navigator.pushNamed(context, 'client-add-job');
            },
          ),
         
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, 'client-landing');
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, 'client-profile');
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pushNamed(context, 'client-login');
            },
          ),
        ],
      ),
    );
  }
}