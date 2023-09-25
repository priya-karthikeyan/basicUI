import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {
              // Handle Contact Us option
            },
          ),
          ListTile(
            title: const Text('Help'),
            onTap: () {
              // Handle Help option
            },
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {
              // Handle Privacy Policy option
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Handle Settings option
            },
          ),
          ListTile(
            title: const Text('Language'),
            onTap: () {
              // Handle Language option
            },
          ),
        ],
      ),
    );
  }
}



class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
      style: const TextStyle(
        color: Colors.black
      ),),
      backgroundColor: Colors.lightGreen,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

