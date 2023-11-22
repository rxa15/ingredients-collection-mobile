import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;
  const ItemDetail(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('${item.fields.name} Detail Page')),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name:\t${item.fields.name}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Text('Category:\t${item.fields.category}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('Amount:\t${item.fields.amount}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('Description:\n${item.fields.description}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Back'))
                ])));
  }
}