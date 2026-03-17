import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            currentAccountPicture: CircleAvatar(
              // Imagen de avatar desde la red
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/sebastianlara0619/Im-genes-act.12/refs/heads/main/L5.JPG'),
            ),
            accountName: Text("Celulares Lara", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            accountEmail: Text(
              "📍 Calle Tecnológico #101\n📞 Tel: 614-123-4567\n✉️ contacto@celulareslara.com",
              style: TextStyle(fontSize: 12),
            ),
          ),
          _itemMenu(context, Icons.phone_android, 'Catálogo', '/'),
          _itemMenu(context, Icons.store, 'Sucursales', '/sucursales'),
          _itemMenu(context, Icons.people_alt, 'Vendedores', '/empleados'),
          _itemMenu(context, Icons.build_circle, 'Reparaciones', '/reparaciones'),
        ],
      ),
    );
  }

  Widget _itemMenu(BuildContext context, IconData icono, String texto, String ruta) {
    return ListTile(
      leading: Icon(icono, color: Colors.indigo),
      title: Text(texto, style: const TextStyle(fontSize: 16)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, ruta);
      },
    );
  }
}
