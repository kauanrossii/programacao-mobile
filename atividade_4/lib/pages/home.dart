import 'package:atividade_4/models/item.dart';
import 'package:atividade_4/pages/form.dart';
import 'package:atividade_4/pages/list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Item> items = [];

  void addItem(Item item) {
    setState(() {
      items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD em Memória'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FormScreen(
                      onAddItem: addItem,
                    ),
                  ),
                );
              },
              child: const Text('Adicionar Item'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListScreen(
                      items: items,
                    ),
                  ),
                );
              },
              child: const Text('Ver Lista de Itens'),
            ),
          ],
        ),
      ),
    );
  }
}
