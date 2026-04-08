import 'package:storemanager/Models/model.dart';

class UserData {
  static int totalSales = 8564;
  static int totalOrders = 67;
  static int totalProducts = 156;
  static int lowStock = 5;

  static List<Sale> sales = [
    Sale(id: '#1024', time: '04:15 PM Today', amount: 550),
    Sale(id: '#1023', time: '03:10 PM Today', amount: 480),
    Sale(id: '#1022', time: '02:50 PM Yesterday', amount: 170),
    Sale(id: '#1021', time: '02:40 PM Yesterday', amount: 315),
    Sale(id: '#1020', time: '02:40 PM Yesterday', amount: 515),
  ];
}

class InvoiceItem {
  final String name;
  final double price;

  InvoiceItem({
    required this.name,
    required this.price,
  });
}

class SaleInvoice {
  final String id;
  final String customerName;
  final DateTime dateTime;
  final double totalAmount;
  final String status;
  final List<InvoiceItem> items;

  SaleInvoice({
    required this.id,
    required this.customerName,
    required this.dateTime,
    required this.totalAmount,
    required this.status,
    required this.items,
  });

  static List<SaleInvoice> dummyInvoices = [
    SaleInvoice(
      id: 'INV-2026-2103-1255',
      customerName: 'Counter Sale',
      dateTime: DateTime(2025, 9, 13, 12, 55),
      totalAmount: 574.00,
      status: 'PAID',
      items: [
        InvoiceItem(name: 'Kurkure Packet', price: 10),
        InvoiceItem(name: 'Nutrela Soya', price: 10),
        InvoiceItem(name: 'Amul Peanut Butter 450gm', price: 154),
        InvoiceItem(name: 'Mariegold Biscuit 40gm', price: 30),
        InvoiceItem(name: 'Mariegold Biscuit 40gm', price: 40),
        InvoiceItem(name: 'Mariegold Biscuit 40gm', price: 50),
      ],
    ),
    SaleInvoice(
      id: 'INV-2026-2103-1255',
      customerName: 'Counter Sale',
      dateTime: DateTime(2025, 9, 13, 12, 55),
      totalAmount: 574.00,
      status: 'PAID',
      items: [
        InvoiceItem(name: 'Kurkure Packet', price: 10),
        InvoiceItem(name: 'Nutrela Soya', price: 10),
      ],
    ),
    SaleInvoice(
      id: 'INV-2026-2103-1255',
      customerName: 'Counter Sale',
      dateTime: DateTime(2025, 9, 13, 12, 55),
      totalAmount: 574.00,
      status: 'PAID',
      items: [
        InvoiceItem(name: 'Kurkure Packet', price: 10),
      ],
    ),
    SaleInvoice(
      id: 'INV-2026-2103-1255',
      customerName: 'Counter Sale',
      dateTime: DateTime(2025, 9, 13, 12, 55),
      totalAmount: 65.00,
      status: 'PAID',
      items: [
        InvoiceItem(name: 'Kurkure Packet', price: 10),
        InvoiceItem(name: 'Amul Tricone Bsc Bliss 120ml', price: 35),
        InvoiceItem(name: 'Cadbury Dairy Milk', price: 20),
        InvoiceItem(name: 'Cadbury Dairy Milk', price: 20),
        InvoiceItem(name: 'Cadbury Dairy Milk', price: 20),
      ],
    ),
  ];
}

class Product {
  final String productImage;
  final String productSku;
  final String productName;
  final int productQtyLeft;
  final DateTime productExpiryDateTime;
  final DateTime productStockedDateTime;
  final int productLowStockSize;

  Product({
    required this.productImage,
    required this.productSku,
    required this.productName,
    required this.productQtyLeft,
    required this.productExpiryDateTime,
    required this.productStockedDateTime,
    required this.productLowStockSize,
  });

  static List<Product> dummyProducts = [
    Product(
      productImage: 'assets/images/product_images/product1.webp',
      productSku: 'IC-AMUL-BSC-30',
      productName: 'Amul Bsc Bliss 120ml',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product2.webp',
      productSku: 'IC-AMUL-BSC-30',
      productName: 'Amul Bsc Bliss 120ml',
      productQtyLeft: 2,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product1.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product2.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product1.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product2.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product1.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
    Product(
      productImage: 'assets/images/product_images/product2.webp',
      productSku: 'KUR-SIZZ-10',
      productName: 'Kurkure Sizzling Hot 45gm',
      productQtyLeft: 60,
      productExpiryDateTime: DateTime(2025, 9, 13, 12, 55),
      productStockedDateTime: DateTime(2025, 9, 13, 12, 55),
      productLowStockSize: 5,
    ),
  ];
}



class SaleProductDetail {
  final String productName;
  final double productMrp;
  final double discountOnMrp;
  final int productQuantityLeft;

  SaleProductDetail({
    required this.productName,
    required this.productMrp,
    required this.discountOnMrp,
    required this.productQuantityLeft,
  });

  static List<SaleProductDetail> dummyInvoices = [
    SaleProductDetail(
      productName: 'Maggie Masala 20gm',
      productMrp: 10.00,
      discountOnMrp: 0,
      productQuantityLeft: 20,
    ),
    SaleProductDetail(
      productName: 'Product B',
      productMrp: 25.00,
      discountOnMrp: 0,
      productQuantityLeft: 5,
    ),
    SaleProductDetail(
      productName: 'Product C',
      productMrp: 30.00,
      discountOnMrp: 0,
      productQuantityLeft: 15,
    ),
    SaleProductDetail(
      productName: 'Product D',
      productMrp: 15.00,
      discountOnMrp: 0,
      productQuantityLeft: 2,
    ),
  ];
}