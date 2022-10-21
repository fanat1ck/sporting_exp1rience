import '../widgets/profile/profile_widget.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
            scrimColor: Colors.transparent,
            backgroundColor: Color.fromARGB(255, 28, 56, 99)),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 2, 28, 50),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 28, 56, 99),
      ),
      home: const ProfileWidget(),
    );
  }
}
