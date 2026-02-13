import 'package:flutter/material.dart';

void main() => runApp(const AppInmobiliaria());

class AppInmobiliaria extends StatelessWidget {
  const AppInmobiliaria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InmobiliariaDCP(),
    );
  }
}

class InmobiliariaDCP extends StatelessWidget {
  const InmobiliariaDCP({super.key});

  Widget buildContainer(String titulo, String subtitulo, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            subtitulo,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inmobiliaria DCP",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.home, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      "Casas",
                      "Disponibles en venta",
                      Colors.orange.shade200,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildContainer(
                      "Departamentos",
                      "Opciones modernas",
                      Colors.yellow.shade200,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      "Terrenos",
                      "Zonas estratégicas",
                      Colors.pink.shade200,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildContainer(
                      "Locales",
                      "Espacios comerciales",
                      Colors.green.shade200,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                      "Rentas",
                      "Opciones accesibles",
                      Colors.blue.shade200,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: buildContainer(
                      "Asesoría",
                      "Te acompañamos",
                      Colors.red.shade200,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
