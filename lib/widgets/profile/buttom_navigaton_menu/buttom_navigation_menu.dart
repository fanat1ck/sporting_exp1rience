import 'package:flutter/material.dart';

class ButtomNuvigationMenu extends StatefulWidget {
  const ButtomNuvigationMenu({Key? key}) : super(key: key);

  @override
  State<ButtomNuvigationMenu> createState() => _ButtomNuvigationMenuState();
}

class _ButtomNuvigationMenuState extends State<ButtomNuvigationMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 170,
      // backgroundColor: Colors.amber,
      child: ListView(
        children: [
          ListTile(
            leading: Container(
              // width: 70,
              // height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.person,
                color: Color.fromARGB(255, 2, 28, 50),
                size: 30,
              ),
            ),
            title: const Text('Match list'),
            onTap: () => print('match list'),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('My matches'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Privecy policy'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
