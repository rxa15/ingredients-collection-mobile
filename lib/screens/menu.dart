import 'package:flutter/material.dart';
// Import drawer widget
import 'package:ingredients_collection_mobile/widgets/left_drawer.dart';
import 'package:ingredients_collection_mobile/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item("Lihat Item", Icons.food_bank_rounded,Colors.pink[100]!),
    Item("Tambah Item", Icons.add_circle_rounded,Colors.orange[200]!),
    Item("Logout", Icons.logout_rounded, Colors.cyan[300]!),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Laras' Adorable Home"),
          backgroundColor: const Color.fromRGBO(199, 133, 249,1.0),
        ),

        // Drawer
        drawer: const LeftDrawer(),

        body: SingleChildScrollView(
          // Widget wrapper yang dapat discroll
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              // Widget untuk menampilkan children secara vertikal
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                  child: Text(
                    'Food Ingredients Collection', // Text yang menandakan nama inventory
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Grid layout
                GridView.count(
                  // Container pada card kita
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: items.map((item) {
                  // Iterasi untuk setiap item
                  return ItemCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      );
  }
}