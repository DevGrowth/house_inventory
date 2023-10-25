import 'package:flutter/material.dart';
import 'package:house_inventory/configs/theme.dart';
import 'package:house_inventory/pages/home.dart';
import 'package:house_inventory/pages/welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //T
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppTheme.PRIMARYCOLOR,
          primaryColorDark: AppTheme.SECONDARYCOLOR),
      home: Welcome(),
    );
  }
}
