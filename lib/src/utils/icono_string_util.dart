import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert"     : Icons.add_alert,
  "accessibility" : Icons.accessibility,
  "folder_open"   : Icons.folder_open,
  "donut-large"   : Icons.donut_large,
  "input"         : Icons.input,
  "slider"        : Icons.list
};

Icon getIcon(String nombre){
  return Icon(_icons[nombre], color: Colors.blue,);
}