import 'package:flutter/material.dart';
import 'package:myapp/contenido.dart';

void main() => runApp(const CelularesLaraApp());

class CelularesLaraApp extends StatelessWidget {
  const CelularesLaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Celulares Lara',
      theme: ThemeData(primarySwatch: Colors.indigo), // Color más tecnológico
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaCelulares(titulo: 'Catálogo Principal', img: 'iphone_banner.png'),
        '/sucursales': (context) => const PaginaCelulares(titulo: 'Nuestras Sucursales', img: 'store_front.png'),
        '/empleados': (context) => const PaginaCelulares(titulo: 'Asesores de Venta', img: 'staff_tech.png'),
        '/reparaciones': (context) => const PaginaCelulares(titulo: 'Servicio Técnico', img: 'repair_tool.png'),
      },
    );
  }
}
