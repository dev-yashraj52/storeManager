import 'package:flutter/material.dart';
import 'package:storemanager/Data/user_data.dart';

Widget invoiceSmallCard(final String id, final String customerName, final DateTime dateTime,
    final double totalAmount, final String status, final List<InvoiceItem> items){
  return Container(
    margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,15,20,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Invoice #$id'),
                Container(
                  padding: EdgeInsets.fromLTRB(8,0,8,0),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Text(status,style: TextStyle( color: Colors.green[900]),)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [Icon(Icons.person),SizedBox(width: 5,),Text(customerName),],),
                Text(
                  '${dateTime.day}-${dateTime.month}-${dateTime.year} | '
                      '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}',
        ),
              ],
            ),
    
            SizedBox(height: 6,),
            Text('₹$totalAmount',style: TextStyle(fontSize: 30, color: Colors.blue[700]),),
            SizedBox(height: 6,),
    
            ...items.take(4).map((item) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.name),
                  Text('₹${item.price.toStringAsFixed(0)}'),
                ],
              );
            }),
            if (items.length > 4)
              Text('+ And ${items.length - 4} More'),
    
            Divider(),
            Center(
              child: Text('View Bill Details', style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
            )
          ],
        ),
      ),
    ),
  );
}