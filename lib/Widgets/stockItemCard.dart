import 'package:flutter/material.dart';
import 'package:storemanager/Screen/inventory/inventory/inventory_detail_screen.dart';

Widget stockItemCard(
    BuildContext context,
    final String productImage,
    final String productSku,
    final String productName,
    final int productQtyLeft,
    final DateTime productExpiryDateTime,
    final DateTime productStockedDateTime,
    final int productLowStockSize,
    ) {
  return Container(
    margin: const EdgeInsets.only(top: 6),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InventoryDetailScreen(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  productImage,
                  height: 75,
                  width: 75,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

             // Middle (name + dates)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue[700],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      productSku,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Exp: ${productExpiryDateTime.day}-${productExpiryDateTime.month}-${productExpiryDateTime.year}",
                      style: TextStyle(fontSize: 14),
                    ),

                    Text(
                      "Stocked: ${productStockedDateTime.day}-${productStockedDateTime.month}-${productStockedDateTime.year}",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // Right (status + qty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: productQtyLeft < productLowStockSize ? Colors.red[100]: Colors.green[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      productQtyLeft < productLowStockSize ? 'Low' : 'In Stock',
                      style: TextStyle(
                        color: productQtyLeft < productLowStockSize ? Colors.red[900]:Colors.green[900],
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: productQtyLeft.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: " pcs",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}