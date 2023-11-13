import 'package:flutter/material.dart';
import 'package:house_inventory/configs/theme.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("House Inventory"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text("Bem vindo")],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.SECONDARYCOLOR,
        selectedItemColor: AppTheme.PRIMARYCOLOR,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Resumo"),
          BottomNavigationBarItem(icon: Icon(Icons.kitchen), label: "Cozinha"),
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_rounded), label: "Compras"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_repair_service), label: "Manutenções"),
        ],
      ),
    );
  }
}
