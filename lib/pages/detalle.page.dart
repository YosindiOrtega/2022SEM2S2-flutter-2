import 'dart:html';

import 'package:flutter/material.dart';

class Detallepage extends StatelessWidget {
  Detallepage({super.key, required this.valor, required this.estado, required this.colorEstado});

  double valor;
  String estado;
  Color colorEstado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Detalle del cálculo"),
      
        
      ),
      body: Column(
        children: [
          Text("Resultado", style: TextStyle( fontSize: 60, fontWeight: FontWeight.bold),),
        Expanded(child: Container(
          
          child: Row(children: [
            
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.lightBlue,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text(estado, style: TextStyle(
                      color: colorEstado,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
                    Text(valor.toString(), style: TextStyle(
                      
                          fontSize: 30,
                          fontWeight: FontWeight.bold))]),
                   decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                      ),),
            )
            
            )
           
           
          ]),
        ),
        //Expanded
        )
      ]),
    );
    
  }
}
