import 'package:flutter/material.dart';

void main() => runApp(const AppHotel());

class AppHotel extends StatelessWidget {
  const AppHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Zapata',
      home: const HabitacionFilaColumna(),
    );
  }
}

class HabitacionFilaColumna extends StatelessWidget {
  const HabitacionFilaColumna({super.key});

  // Función actualizada para aceptar Iconos
  Widget _crearCuadroElegante(Color color, String etiqueta, IconData icono) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra contenido verticalmente
          children: [
            Icon(
              icono,
              size: 40,
              color: const Color(0xFF5D4037), // Color café oscuro elegante
            ),
            const SizedBox(height: 10), // Espacio entre icono y texto
            Text(
              etiqueta,
              style: const TextStyle(
                color: Color(0xFF5D4037),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
                fontSize: 12, // Ajuste de tamaño para que quepa bien
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF0),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'HOTEL ZAPATA',
          style: TextStyle(
            color: Color(0xFFF5F5DC),
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF630000),
        actions: [
          IconButton(
            icon: const Icon(Icons.king_bed_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: Column(
          children: [
            // Fila 1
            Expanded(
              child: Row(
                children: [
                  _crearCuadroElegante(const Color(0xFFD4A373).withOpacity(0.3), "RESERVAS", Icons.calendar_month_outlined),
                  _crearCuadroElegante(const Color(0xFFE9EDC9), "SUITES", Icons.vpn_key_outlined),
                ],
              ),
            ),
            // Fila 2
            Expanded(
              child: Row(
                children: [
                  _crearCuadroElegante(const Color(0xFFA2D2FF).withOpacity(0.3), "SPA", Icons.spa_outlined),
                  _crearCuadroElegante(const Color(0xFFFADDE1), "EVENTOS", Icons.celebration_outlined),
                ],
              ),
            ),
            // Fila 3
            Expanded(
              child: Row(
                children: [
                  _crearCuadroElegante(const Color(0xFFCCD5AE), "RESTAURANTE", Icons.restaurant),
                  _crearCuadroElegante(const Color(0xFFFFE5D9), "TERRAZA", Icons.wb_sunny_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}