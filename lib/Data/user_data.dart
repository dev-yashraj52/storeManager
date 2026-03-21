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

class Invoice {
  final String id;
  final String customerName;
  final DateTime dateTime;
  final double totalAmount;
  final String status;
  final List<InvoiceItem> items;

  Invoice({
    required this.id,
    required this.customerName,
    required this.dateTime,
    required this.totalAmount,
    required this.status,
    required this.items,
  });

  static List<Invoice> dummyInvoices = [
    Invoice(
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
  ];
}