import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/widgets.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 12, left: 12, right: 12),
        child:  Column(

          children: [
            searchWidget('Search Recent Sales...'),

          ],
        ),

      ),

    );
  }
}