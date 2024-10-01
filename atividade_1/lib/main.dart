import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu primeiro aplicativo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Meu primeiro aplicativo",
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Card(
            child: ListView(
              children: const [
                Text("Primeiro tópico"),
                Text("Segundo tópico"),
                Text("Terceiro tópico"),
                Text("Quarto tópico"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
