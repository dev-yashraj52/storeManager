import 'package:flutter/material.dart';

Widget appFormField(
    final String label){
  return Container(
    padding: EdgeInsets.only(right: 0,top: 0),
    decoration: BoxDecoration(
      color: Colors.white, // important for shadow
      borderRadius: BorderRadius.circular(10),
      // boxShadow: [
      //   BoxShadow(
      //     color: Color.fromRGBO(0, 0, 0, 0.1),
      //     blurRadius: 8,
      //     offset: Offset(0, 4),
      //   ),
      // ],
    ),

    child: TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    )
  );
}