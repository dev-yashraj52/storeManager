import 'package:flutter/material.dart';

class CreatePurchaseScreen extends StatelessWidget {
  const CreatePurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Purchase")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text('Create New Purchase Screen'),
            ],
          ),
        ),
      ),
    );
  }
}