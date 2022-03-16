import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transfer_app/src/domain/entity/transfer_entity.dart';

class TransferListScreen extends StatelessWidget {
  const TransferListScreen({
    Key? key,
    required this.transfers,
  }) : super(key: key);

  final List<TransferEntity> transfers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfers'),
      ),
      body: ListView.builder(
          itemCount: transfers.length,
          itemBuilder: (context, index) {
            final transfer = transfers[index];
            return Text(transfer.senderName);
          }),
    );
  }
}
