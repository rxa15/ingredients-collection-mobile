import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<FoodIngredients> ingredients = [
    FoodIngredients("Lihat Bahan Makanan", Icons.food_bank_rounded),
    FoodIngredients("Tambah Bahan Makanan", Icons.add_circle_rounded),
    FoodIngredients("Logout", Icons.logout_rounded),
  ];

  @override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Laras' Adorable Home",
        ),
      ),
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
                  'Ingredients Collection', // Text yang menandakan toko
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
                children: ingredients.map((ingredient) {
                // Iterasi untuk setiap item
                return ShopCard(ingredient);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
}
}

class FoodIngredients{
  final String name;
  final IconData icon;

  FoodIngredients(this.name, this.icon);
}

class ShopCard extends StatelessWidget {
  final FoodIngredients ingredients;

  const ShopCard(this.ingredients, {Key? key}) : super(key: key); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${ingredients.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  ingredients.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  ingredients.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
