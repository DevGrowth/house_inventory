import 'package:flutter/material.dart';
import 'package:house_inventory/configs/theme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.PRIMARYCOLOR,
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
    );
  }
}
