import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la barra de "Debug"
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Renata Ronquillo Lopez',
            style: TextStyle(
              fontFamily: 'Pacifico', // Cambia la fuente
              fontSize: 24, // Tamaño de la fuente
              fontWeight: FontWeight.normal, // Grosor de la fuente
              color: Colors.white, // Color del texto
            ),
          ),
          backgroundColor: Color(0xFFF48FB1), // Color pastel rosa
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Fondo con sombra y bordes redondos
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF8BBD0), // Color pastel rosa más claro
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
              // Contenido en fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCatInfo('Edad', '3 años'),
                  _buildCatInfo('Raza', 'Siamés'),
                  _buildCatInfo('Comida favorita', 'Atún'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir cada dato relacionado con gatos
  Widget _buildCatInfo(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.pink[800],
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.pink[900],
          ),
        ),
      ],
    );
  }
}
