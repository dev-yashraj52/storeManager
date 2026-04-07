import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/appFormField.dart';
import 'package:storemanager/Widgets/appFormSelectField.dart';

class CreateSaleScreen extends StatelessWidget {
  const CreateSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Sales")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Form(
            child: Column(
              spacing: 15,
              children: [
                appFormField('Customer'),
                appFormField('Phone Number'),
                appFormSelectField(
                    "Select Product",
                    ["Maggie Masala", "Item B", "Item C"],
                    null,
                        (value) {},
                        (value) => null
                ),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                    ),
                    child: Text('ADD',
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}