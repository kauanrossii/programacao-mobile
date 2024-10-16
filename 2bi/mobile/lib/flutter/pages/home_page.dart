import 'package:flutter/material.dart';
import 'package:mobile/flutter/pages/list_transactions.page.dart';
import 'package:mobile/services/transaction_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Banco do Kauan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ListTransactionsPage(
                      transactionsService: TransactionService())));
            },
            child: const Text("Transações"),)
          ],
        ),
      ),
    );
  }
}
