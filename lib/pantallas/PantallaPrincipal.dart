import 'package:flutter/material.dart';

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
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        height: 350,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                CircleAvatar(
              backgroundColor: Colors.blue, // Color de fondo del avatar
              child: Text(
                'V', // Inicial del nombre
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 20), // Espacio entre el avatar y el texto
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Victor Manuel Donghu Trejo',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 10), // Espacio entre el nombre y el texto
                Text(
                  'Machine learning optimizes the breadth and depth of your fashion assortment and determines the right mix of product categories to stock each week to meet demand. Our eBook shows you how: ',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsm-sUfOrfYDsejhqi9YYbQrFViNclxHey0A&s',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ), SizedBox(height: 10),// Espacio entre el texto y los botones
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón
                        print('¡Botón Me gusta presionado!');
                      },
                      child: Text('Me gusta'),
                    ),
                    SizedBox(width: 10), // Espacio entre botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón
                        print('¡Botón Comenta presionado!');
                      },
                      child: Text('Comenta'),
                    ),
                    SizedBox(width: 10), // Espacio entre botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón
                        print('¡Botón Compartir presionado!');
                      },
                      child: Text('Compartir'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
