import 'package:flutter/material.dart';

Widget dashboardCard(
    final String title,
    final String smallText,
    final IconData icon,
    final Color backgroundColor,
    final Color smallTextColor,
    final Color iconColorMain,
    final Color iconColorSecondary
){
  return Expanded(
    child: AspectRatio(
      aspectRatio: 1.5,
      child: Card(
        color: backgroundColor,
        child: Container(
          padding: EdgeInsets.fromLTRB(15,16,15,10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight(500),
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      smallText,
                      style: TextStyle(
                        fontWeight: FontWeight(400),
                        fontSize: 20,
                        color: smallTextColor,
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iconColorSecondary,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            icon,
                            size: 35,
                            color: iconColorMain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    ),
  );
}

Widget salesTiles(
    final String title,
    final IconData icon,
    final Color backgroundColor,
    final Color iconColor,
    ){
  return Expanded(
    child: AspectRatio(
      aspectRatio: 3,
      child: Card(
        color: backgroundColor,
        child: Container(
          padding: EdgeInsets.fromLTRB(15,0,15,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0,right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: iconColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          icon,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight(500),
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    ),
  );
}

Widget activityLogList(final IconData icon, final String idText, final String dateTimeText, final amountText){
  return ListTile(
    leading: Icon(icon),
    title: Text(idText),
    subtitle: Text(dateTimeText),
    trailing: Text(amountText,style: TextStyle(fontSize: 15),),
  );
}

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
                Container(
                  padding: EdgeInsets.only(right: 12,top: 5),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: "Search....",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                    ),
                  ),
                ),
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
                              salesTiles(
                                "Add Product",
                                Icons.add,
                                Colors.blue[50]!,
                                Colors.blue[700]!,
                              ),
                              SizedBox(width: 7,),
                              salesTiles(
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
                              salesTiles(
                                "Sales",
                                Icons.currency_rupee,
                                Colors.orange[50]!,
                                Colors.amber[700]!,
                              ),
                              SizedBox(width: 7,),
                              salesTiles(
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
                              salesTiles(
                                "Reports",
                                Icons.article,
                                Colors.blue[50]!,
                                Colors.blue[700]!,
                              ),
                              SizedBox(width: 7,),
                              salesTiles(
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
                                    activityLogList(Icons.receipt, '#1024', '04:15 PM Today', '₹120'),
                                    activityLogList(Icons.receipt, '#1023', '03:10 PM Today', '₹480'),
                                    activityLogList(Icons.receipt, '#1022', '02:50 PM Yesterday', '₹170'),
                                    activityLogList(Icons.receipt, '#1021', '02:40 PM Yesterday', '₹515'),
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
