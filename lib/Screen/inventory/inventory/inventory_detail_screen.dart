import 'package:flutter/material.dart';

class InventoryDetailScreen extends StatelessWidget {
  const InventoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inventory Detail")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text('Inventory Detail Screen'),
            ],
          ),
        ),
      ),
    );
  }
}