
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/pages/avatar_page.dart';
import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:componentes_flutter/src/pages/home_temp.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Componentes App",
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/" : (BuildContext context) => HomePage(),
        "/alert" : (BuildContext context) => AlertPage(),
        "/avatar" : (BuildContext context) => AvatarPage(),
      },
    );
  }
}