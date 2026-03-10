import 'package:flutter/material.dart';

Widget searchWidget(final String searchHint){
  return Container(
    padding: EdgeInsets.only(right: 12,top: 5),
    child: TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: searchHint,
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
      ),
    ),
  );
}