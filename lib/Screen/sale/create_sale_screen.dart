import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 12, left: 12, right: 12, ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Create New Sale Screen'))
          ],
        ),

      ),

    );
  }
}