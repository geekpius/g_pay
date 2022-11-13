import 'package:flutter/material.dart';
import 'package:g_pay/widget/home/transaction_list_tile.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    Key? key,
    this.scrollController,
    this.transactions = const [],
  }) : super(key: key);

  final ScrollController? scrollController;
  final List<Map<String, dynamic>> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      itemCount: transactions.length,
      itemBuilder: (context, index){
        final transaction = transactions[index];
        return TransactionListTile(
          avatar: transaction['avatar'],
          text: transaction['text'],
          date: transaction['date'],
          amount: transaction['amount'],
          status: transaction['status'],
        );
      }
    );
  }
}
