import 'package:flutter/material.dart';
import 'package:storemanager/Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5, left: 12,),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("RGS Retail",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight(500),
                          ),
                        ),
                        Text("SuperAdmin",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        overlayColor: Colors.transparent,
                      ),
                      onPressed: (){},
                      child: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.blue[800],
                        size: 52,
                      ),
                    ),

                  ],
                ),
                searchWidget('Search....'),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(right: 12,),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 15,bottom: 5,left: 7,),
                            child: Text('Dashboard',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight(450),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              dashboardCard(
                              "Today's Sale",
                              "₹6900",
                              Icons.bar_chart,
                              Colors.white,
                              Colors.green[600]!,
                              Colors.green[700]!,
                              Colors.green[50]!
                              ),
                              SizedBox(width: 7,),
                              dashboardCard(
                                  "Orders",
                                  "45",
                                  Icons.receipt_long,
                                  Colors.white,
                                  Colors.black,
                                  Colors.blue[700]!,
                                  Colors.blue[50]!
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              dashboardCard(
                              "Stock Products",
                              "120",
                              Icons.inventory_2_rounded,
                              Colors.white,
                              Colors.black,
                              Colors.amber[700]!,
                              Colors.amber[50]!
                          ),
                              SizedBox(width: 7,),
                              dashboardCard(
                                  "Low Stock",
                                  "3",
                                  Icons.warning_rounded,
                                  Colors.white,
                                  Colors.red[600]!,
                                  Colors.red[700]!,
                                  Colors.red[50]!
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          //small rectangle cards beneath large cards in dashboard
                          Row(
                            children: [
                              dashboardTiles(
                                "Add Product",
                                Icons.add,
                                Colors.blue[50]!,
                                Colors.blue[700]!,
                              ),
                              SizedBox(width: 7,),
                              dashboardTiles(
                                "Inventory",
                                Icons.shopping_cart,
                                Colors.green[50]!,
                                Colors.green[700]!,
                              ),
                            ],
                          ),
                          SizedBox(height: 2,),
                          //small cards second row
                          Row(
                            children: [
                              dashboardTiles(
                                "Sales",
                                Icons.currency_rupee,
                                Colors.orange[50]!,
                                Colors.amber[700]!,
                              ),
                              SizedBox(width: 7,),
                              dashboardTiles(
                                "Customers",
                                Icons.people,
                                Colors.purple[50]!,
                                Colors.purple[900]!,
                              ),
                            ],
                          ),
                          SizedBox(height: 2,),
                          //small cards third row
                          Row(
                            children: [
                              dashboardTiles(
                                "Reports",
                                Icons.article,
                                Colors.blue[50]!,
                                Colors.blue[700]!,
                              ),
                              SizedBox(width: 7,),
                              dashboardTiles(
                                "Settings",
                                Icons.settings,
                                Colors.grey[100]!,
                                Colors.grey[600]!,
                              ),

                            ],
                          ),
                          //Activity Log UI
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 18,bottom: 7, left: 7,),
                                    child: Text('Activity Log',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight(450),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                  ),

                                ],

                              ),
                              //activity log list
                              Card(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    salesInventoryListTiles(Icons.receipt, '#1024', '04:15 PM Today', '₹120'),
                                    salesInventoryListTiles(Icons.receipt, '#1023', '03:10 PM Today', '₹480'),
                                    salesInventoryListTiles(Icons.receipt, '#1022', '02:50 PM Yesterday', '₹170'),
                                    salesInventoryListTiles(Icons.receipt, '#1021', '02:40 PM Yesterday', '₹515'),
                                  ],
                                ),
                              )




                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ]
          ),
        ));
  }
}
