import 'package:transfer_app/src/domain/entity/transfer_entity.dart';
import 'package:transfer_app/src/data/graphql/query/fetch_transfers/fetch_transfers.dart'
    as fetch_transfers;

TransferEntity mapToTransferEntity(fetch_transfers.Transfer model) {
  return TransferEntity(
    id: model.id,
    senderName: model.senderName,
    amount: model.amount,
    createdAt: model.createdAt,
  );
}
