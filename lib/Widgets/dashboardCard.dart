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