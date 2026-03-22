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
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Expanded(child: SizedBox(height: 52, child: searchWidget('Search Recent Sales...'),)),
                SizedBox(
                  height: 52,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(2,2,2,2),
                      decoration: BoxDecoration(
                        color: Colors.white, // important for shadow
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.tune),)),
                )],
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                  children: [...invoices.map((invoice){
                    return invoiceSmallCard(invoice.id, invoice.customerName, invoice.dateTime, invoice.totalAmount, invoice.status, invoice.items);
                  }),
                    SizedBox(height: 80,)
                  ]

              ),
            ),
            ),
          ],
        ),

      ),

    );
  }
}