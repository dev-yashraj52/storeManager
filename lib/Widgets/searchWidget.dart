import 'package:flutter/material.dart';

Widget searchWidget(final String searchHint){
  return Container(
    padding: EdgeInsets.only(right: 0,top: 0),
    decoration: BoxDecoration(
      color: Colors.white, // important for shadow
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
      ],
    ),

    child: TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: searchHint,
        prefixIcon: Icon(Icons.search,size: 28,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}