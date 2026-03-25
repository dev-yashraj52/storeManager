import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/appFormField.dart';

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
            spacing: 10,
            children: [
              Text('Create Sales Screen'),
              appFormField('Enter Product'),
              appFormField('Enter Quantity'),
              appFormField('Enter Price'),
            ],
          ),
        ),
      ),
    );
  }
}