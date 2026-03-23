import 'package:flutter/material.dart';
import 'package:storemanager/Data/user_data.dart';
import 'package:storemanager/Screen/inventory/inventory/inventory_detail_screen.dart';

Widget stockItemCard(
    BuildContext context,
    final String id,
    final String name,
    final DateTime dateTime,
    final double totalAmount,
    final String status,
    final List<InvoiceItem> items,
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
              /// 🔹 Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://lh4.googleusercontent.com/proxy/Aj9usBgtwZlI-0Fj4T6Q4d30xhJN_0jrQ7IG2DOxapBWh2HB5l80XQDiX0IabASuL1Z_4qZ8_R23XnuEhOBU-NN1cmjM-P8jIc88g7PBRejlUeo03Br6lSwzOII',
                  height: 75,
                  width: 75,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              /// 🔹 Middle (name + dates)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Name here, long name too',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[700],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "Exp: ${dateTime.day}-${dateTime.month}-${dateTime.year}",
                      style: const TextStyle(fontSize: 14),
                    ),

                    Text(
                      "Stocked: ${dateTime.day}-${dateTime.month}-${dateTime.year}",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              /// 🔹 Right (status + qty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "400",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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