import 'package:flutter/material.dart';
import 'package:hola_mundo/datos/datos.dart';
import 'package:hola_mundo/widgets/tarjetaFeed.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
     super.key,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Red Social',
          style: TextStyle(color: Colors.black38),
        ),
      ),

      body: ListView.builder(
        itemCount: listaCards.length,
        itemBuilder: (context,index){
          return tarjetaFeed(tarjeta: listaCards[index]);
        },
      ),
      

      backgroundColor: const Color.fromARGB(47, 18, 165, 181),
    );
  }
}
