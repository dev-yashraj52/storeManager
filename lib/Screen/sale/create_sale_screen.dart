import 'package:flutter/material.dart';

class CreateSaleScreen extends StatelessWidget {
  const CreateSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Sales")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text('Create Sales Screen'),
            ],
          ),
        ),
      ),
    );
  }
}