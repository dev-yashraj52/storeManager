import 'package:flutter/material.dart';

Widget dashboardTiles(
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