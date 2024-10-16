import 'package:flutter/material.dart';
import 'package:mobile/flutter/pages/form_transactions_page.dart';
import 'package:mobile/services/dtos/transaction.dart';
import 'package:mobile/services/transaction_service.dart';

class ListTransactionsPage extends StatefulWidget {
  final TransactionService transactionsService;

  const ListTransactionsPage({super.key, required this.transactionsService});

  @override
  ListTransactionsPageState createState() => ListTransactionsPageState();
}

class ListTransactionsPageState extends State<ListTransactionsPage> {
  List<TransactionDto> transactions = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transações bancárias"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FormTransactionsPage()));
              },
              child: const Text("Nova transação")),
          ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return ListTile(
                title: Text(transaction.name),
                subtitle: Text('Valor: ${transaction.value}'),
              );
            },
          )
        ]));
  }

  fetchData() async {
    final loadedTransactions = await widget.transactionsService.getAll();
    setState(() {
      transactions = loadedTransactions;
    });
  }
}
