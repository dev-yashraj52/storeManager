import 'package:flutter/material.dart';

Widget salesInventoryListTiles(final IconData icon, final String idText, final String dateTimeText, final amountText){
  return ListTile(
    leading: Icon(icon),
    title: Text(idText),
    subtitle: Text(dateTimeText),
    trailing: Text(amountText,style: TextStyle(fontSize: 15),),
  );
}