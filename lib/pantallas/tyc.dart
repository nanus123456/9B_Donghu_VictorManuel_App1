import 'package:flutter/material.dart';


class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red Social - Términos y Condiciones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Términos y Condiciones'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: TermsAndConditions(),
        ),
      ),
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Términos y Condiciones',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          '1. Introducción',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Bienvenido a nuestra red social. Al utilizar nuestros servicios, usted acepta estos términos y condiciones en su totalidad. Si no está de acuerdo con estos términos y condiciones o cualquier parte de estos términos y condiciones, no debe utilizar nuestra red social.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        Text(
          '2. Uso Aceptable',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Usted debe utilizar nuestra red social de manera que sea legal y respetuosa. No debe utilizar nuestra red social de ninguna manera que cause, o pueda causar, daño a la red social o deterioro de la disponibilidad o accesibilidad de la misma.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        Text(
          '3. Contenido Generado por el Usuario',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'El contenido generado por los usuarios de nuestra red social es propiedad del usuario. Sin embargo, al publicar contenido en nuestra red social, usted nos otorga una licencia mundial, no exclusiva, libre de regalías para usar, reproducir, adaptar, publicar y distribuir dicho contenido en cualquier medio.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
