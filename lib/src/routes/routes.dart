
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/pages/animated_container_page.dart';
import 'package:componentes_flutter/src/pages/avatar_page.dart';
import 'package:componentes_flutter/src/pages/card_page.dart';
import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:componentes_flutter/src/pages/input_page.dart';
import 'package:componentes_flutter/src/pages/listView_page.dart';
import 'package:componentes_flutter/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    "/"       : (BuildContext context) => HomePage(),
    "/alert"  : (BuildContext context) => AlertPage(),
    "/avatar" : (BuildContext context) => AvatarPage(),
    "/card"   : (BuildContext context) => CardPage(),
    "/inputs" : (BuildContext context) => InputPage(),
    "/slider" : (BuildContext context) => SliderPage(),
    "/list"   : (BuildContext context) => ListPage(),
    "/animatedContainer"   : (BuildContext context) => AnimatedContainerPage(),
  };
}

