import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';

class Configuracoes {

  static List<DropdownMenuItem<String>> getEstados(){

    List<DropdownMenuItem<String>> listaItensDropEstados = [];

    //Categorias
    listaItensDropEstados.add(
        DropdownMenuItem(child: Text(
          "Região", style: TextStyle(
            color: Color(0xfff50057)
        ),
        ), value: null,)
    );

    for( var estado in Estados.listaEstadosAbrv ){
      listaItensDropEstados.add(
          DropdownMenuItem(child: Text(estado), value: estado,)
      );
    }

    return listaItensDropEstados;

  }

  static List<DropdownMenuItem<String>> getCategorias(){

    List<DropdownMenuItem<String>> itensDropCategorias = [];

    //Categorias
    itensDropCategorias.add(
        DropdownMenuItem(child: Text(
            "Categoria", style: TextStyle(
          color: Color(0xfff50057)
        ),
        ), value: null,)
    );

    itensDropCategorias.add(
        DropdownMenuItem(child: Text("Perfumes"), value: "perfumes",)
    );

    itensDropCategorias.add(
        DropdownMenuItem(child: Text("Cremes"), value: "cremes",)
    );

    itensDropCategorias.add(
        DropdownMenuItem(child: Text("Champoo"), value: "champoo",)
    );

    itensDropCategorias.add(
        DropdownMenuItem(child: Text("Baton"), value: "baton",)
    );

    itensDropCategorias.add(
        DropdownMenuItem(child: Text("Make"), value: "make",)
    );

    return itensDropCategorias;

  }

}