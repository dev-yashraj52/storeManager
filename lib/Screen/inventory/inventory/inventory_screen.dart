import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/widgets.dart';
import 'package:storemanager/Data/user_data.dart';

final products = Product.dummyProducts;

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 12, left: 12, right: 12, ),
        child:  Column(
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: SizedBox(height: 52, child: searchWidget('Search Inventory'),)),
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
                      child: IconButton(
                        onPressed: () {
                          bottomPopup(context,
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(title: Text("Filters Options")),
                                ListTile(title: Text("Work in Progress")),
                              ],
                            ),
                          );
                        }, icon: Icon(Icons.tune),)),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Expanded(child: SingleChildScrollView(
              child: Column(
                  children: [...products.map((product){
                    return stockItemCard(context, product.productImage, product.productSku, product.productName, product.productQtyLeft, product.productExpiryDateTime, product.productStockedDateTime, product.productLowStockSize );
                  }),
                    SizedBox(height: 20,)
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