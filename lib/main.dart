import 'package:flutter/material.dart';
import 'package:cosmeticsnew/RouteGenerator.dart';
import 'package:cosmeticsnew/views/Anuncios.dart';
import 'package:cosmeticsnew/views/Login.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xffff4081),
  accentColor: Color(0xffc51162)
);

void main() => runApp(MaterialApp(
  title: "COSMETICS",
  home: Anuncios(),
  theme: temaPadrao,
  initialRoute: "/",
  onGenerateRoute: RouteGenerator.generateRoute,
  debugShowCheckedModeBanner: false,
));

