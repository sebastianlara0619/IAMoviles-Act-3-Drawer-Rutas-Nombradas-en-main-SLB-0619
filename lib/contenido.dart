import 'package:flutter/material.dart';
import 'package:myapp/menu_lateral.dart';

class PaginaCelulares extends StatelessWidget {
  final String titulo;
  final String img;

  const PaginaCelulares({super.key, required this.titulo, required this.img});

  @override
  Widget build(BuildContext context) {
    String imageUrl;
    Widget? extraWidget;

    if (titulo == 'Catálogo Principal') {
      imageUrl = 'https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L1.png';
    } else if (titulo == 'Nuestras Sucursales') {
      imageUrl = 'https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L2.png';
    } else if (titulo == 'Asesores de Venta') {
      imageUrl = 'https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L3.jfif';
      extraWidget = const Text('joaquín', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey));
    } else if (titulo == 'Servicio Técnico') {
      imageUrl = 'https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L4.jfif';
    } else {
      imageUrl = "https://raw.githubusercontent.com/LuisLara2021/mis_imagenes/main/img/$img";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Celulares Lara"),
        backgroundColor: Colors.purple[200], // Lilac color
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(titulo, style: const TextStyle(fontSize: 22, color: Colors.indigo, fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.phonelink_setup, size: 80, color: Colors.grey),
                ),
              ),
            ),
            if (extraWidget != null) const SizedBox(height: 15),
            if (extraWidget != null) extraWidget,
          ],
        ),
      ),
    );
  }
}
