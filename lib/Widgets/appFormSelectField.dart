import 'package:flutter/material.dart';

Widget appFormSelectField(
  final String label,
  final List<String> items,
  final String? initialValue,
  final Function(String?) onChanged,
  final String? Function(String?)? validator){
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

      child: DropdownButtonFormField<String>(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
        // validator: validator,
      ),
  );
  }
