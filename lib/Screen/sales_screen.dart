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
            SizedBox(height: 20,),
                Card(
                  color: Colors.white,
                  child: SingleChildScrollView(
                      child: Column(
                        children: [
                          salesInventoryListTiles(Icons.receipt, '#1024', '04:15 PM Today', '₹120'),
                          salesInventoryListTiles(Icons.receipt, '#1023', '03:10 PM Today', '₹480'),
                          salesInventoryListTiles(Icons.receipt, '#1022', '02:50 PM Yesterday', '₹170'),
                          salesInventoryListTiles(Icons.receipt, '#1021', '02:40 PM Yesterday', '₹515'),
                          salesInventoryListTiles(Icons.receipt, '#1024', '04:15 PM Today', '₹120'),
                          salesInventoryListTiles(Icons.receipt, '#1023', '03:10 PM Today', '₹480'),
                          salesInventoryListTiles(Icons.receipt, '#1022', '02:50 PM Yesterday', '₹170'),
                        ],
                      )

                  ),
                ),
          ],
        ),

      ),

    );
  }
}