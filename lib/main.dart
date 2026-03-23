import 'package:flutter/material.dart';
import 'Screen/home/home_screen.dart';
import 'Screen/sale/sale_screen.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  //currentPage default value render that Page on Screen
  int currentPage = 0;

  final pages = [
    HomeScreen(),
    Center(child: Text('Inventory Screen')),
    SaleScreen(),
    Center(child: Text('Settings Screen')),
  ];

  Widget? buildFAB() {
    if (currentPage == 1) {
      return FloatingActionButton(
        backgroundColor: Colors.green[600],
        foregroundColor: Colors.white,
        child: Icon(Icons.add_business),
        onPressed: () {},
      );
    }
    else if (currentPage == 2) {
      return FloatingActionButton(
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        child: Icon(Icons.sell),
        onPressed: () {},
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),

      floatingActionButton: buildFAB(),

      //Bottom NavBar
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,
        ),
        child: Material(
          elevation: 8,
          child: SizedBox(
            height: 75,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: currentPage,

              unselectedItemColor: Colors.grey[580],
              selectedItemColor: Colors.blue[800],
              unselectedFontSize: 14,
              selectedFontSize: 16,

              onTap: (index){
                setState(() {
                  currentPage = index;
                });
              },

              items: const[
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.home),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.inventory_2_rounded),
                    label: "Inventory"),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.currency_rupee),
                    label: "Sales"),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.settings),
                    label: "Settings"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
