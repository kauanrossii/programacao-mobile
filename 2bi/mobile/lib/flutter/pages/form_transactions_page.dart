import 'package:flutter/material.dart';

class FormTransactionsPage extends StatefulWidget {
  const FormTransactionsPage({super.key});

  @override
  FormTransactionsPageState createState() => FormTransactionsPageState();
}

class FormTransactionsPageState extends State<FormTransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar transação"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Valor"),
              )
            ],
          ))),
    );
  }
}
