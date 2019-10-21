import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/new_transaction.dart';
import 'package:personal_expenses_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> userTransaction = [
    Transaction(
        id: 't1',
        title: 'new shoe',
        amount: 69.99,
        transactionDate: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'new shirt',
        amount: 69.96,
        transactionDate: DateTime.now()),
  ];

  void addNewTransaction(String txtTitle, double txtAmount) {
    final newTx = Transaction(
        title: txtTitle,
        amount: txtAmount,
        transactionDate: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addNewTransaction),
        TransactionList(userTransaction)
      ],
    );
  }
}
