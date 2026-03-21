import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/widgets.dart';
import 'package:storemanager/Data/user_data.dart';

final invoices = Invoice.dummyInvoices;

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
            Expanded(child: SingleChildScrollView(
              child: Column(
                  children: invoices.map((invoice){
                    return invoiceSmallCard(invoice.id, invoice.customerName, invoice.dateTime, invoice.totalAmount, invoice.status, invoice.items);
                  }).toList()
              ),
            ),)
          ],
        ),

      ),

    );
  }
}