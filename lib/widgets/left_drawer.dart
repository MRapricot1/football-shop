import 'package:flutter/material.dart';
import 'package:theshopping/screen/menu.dart';
import 'package:theshopping/screen/productslist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Text('FajarWearShop', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                Padding(padding: EdgeInsets.all(8)),
                Text('Seluruh produk FajarWearShop di sini!', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Tambah Produk'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProductFormPage())); 
            },
          ),
        ],
      ),
    );
  }
}
