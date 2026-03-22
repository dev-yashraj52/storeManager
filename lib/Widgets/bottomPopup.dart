import 'package:flutter/material.dart';

void bottomPopup(BuildContext context,Widget child){
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.all(16),
        child: child, // 👈 dynamic content
      );
    },
  );
}