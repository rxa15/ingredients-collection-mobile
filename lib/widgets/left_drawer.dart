import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/screens/list_item.dart';
import 'package:ingredients_collection_mobile/screens/menu.dart';
import 'package:ingredients_collection_mobile/screens/item_form.dart';

class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
            child: ListView(
            children: [
                const DrawerHeader(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 133, 249,1.0),
                    ),
                    child: Column(
                        children: [
                            Text(
                                'Ingredients Collection',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                ),
                            ),
                        ],
                    ),
                ),
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Halaman Utama'),
                  // Redirect to Homepage
                  onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) => HomePage(),
                          ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add_circle_rounded),
                  title: const Text('Tambah Item'),
                  // Redirect to Tambah Item page
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ItemFormPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.grid_view_outlined),
                  title: const Text('Lihat Item'),
                  // Redirect to Lihat Item page
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ItemPage()));
                  },
                )
            ],
            ),
        );
    }
}