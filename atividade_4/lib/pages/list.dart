
import 'package:atividade_4/models/item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Item> items;

  const ListScreen({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Itens'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Email: ${item.email}\nSenha: ${item.password}'),
          );
        },
      ),
    );
  }
}
