import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário Básico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário Básico'),
        ),
        body: const BasicForm(),
      ),
    );
  }
}

class BasicForm extends StatefulWidget {
  const BasicForm({super.key});

  @override
  BasicFormState createState() => BasicFormState();
}

class BasicFormState extends State<BasicForm> {
  final List<String> fields = ["Nome", "Email", "Cidade"];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
          itemCount: fields.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: fields[index], // Define o rótulo com base na lista
                ),
                obscureText:
                    fields[index] == 'Senha', // Campo 'Senha' será obscurecido
              ),
            );
          }),
    );
  }
}
