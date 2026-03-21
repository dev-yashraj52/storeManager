import 'package:flutter/material.dart';
import 'package:storemanager/Data/user_data.dart';

Widget invoiceSmallCard(final String id, final String customerName, final DateTime dateTime,
    final double totalAmount, final String status, final List<InvoiceItem> items){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(id),
              Text(status),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(customerName),
              Text(dateTime.toString()),
            ],
          ),

          Text('₹$totalAmount',),

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
        ],
      ),
    ),
  );
}