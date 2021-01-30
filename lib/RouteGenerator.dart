
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cosmeticsnew/views/Anuncios.dart';
import 'package:cosmeticsnew/views/DetalhesAnuncio.dart';
import 'package:cosmeticsnew/views/Login.dart';
import 'package:cosmeticsnew/views/MeusAnuncios.dart';
import 'package:cosmeticsnew/views/NovoAnuncio.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){

    final args = settings.arguments;

    switch( settings.name ){
      case "/" :
        return MaterialPageRoute(
          builder: (_) => Anuncios()
        );
      case "/login" :
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case "/meus-anuncios" :
        return MaterialPageRoute(
            builder: (_) => MeusAnuncios()
        );
      case "/novo-anuncio" :
        return MaterialPageRoute(
            builder: (_) => NovoAnuncio()
        );
      case "/detalhes-anuncio" :
        return MaterialPageRoute(
            builder: (_) => DetalhesAnuncio(args)
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){

    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          appBar: AppBar(
            title: Text("Tela não encontrada!"),
          ),
          body: Center(
            child: Text("Tela não encontrada!"),
          ),
        );
      }
    );

  }

}