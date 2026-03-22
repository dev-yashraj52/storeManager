import 'package:flutter/material.dart';

void bottomPopup(BuildContext context){
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min, // 👈 important
        children: [
          ListTile(
            title: Text("Option 1"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Option 2"),
            onTap: () {},
          ),
        ],
      );
    },
  );
}