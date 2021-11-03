import 'package:transfer_app/src/data/remote/remote_service.dart';
import 'package:transfer_app/src/domain/entity/transfer_entity.dart';
import 'package:transfer_app/src/mapper/get_transfers_mapper.dart';

abstract class Repository {
  Future<List<TransferEntity>> getAllTransfers();
}

class RepositoryImpl implements Repository {
  const RepositoryImpl(this._remoteService);

  final RemoteService _remoteService;

  @override
  Future<List<TransferEntity>> getAllTransfers() async {
    final transfers = await _remoteService.getAllTransfers();
    return transfers.map((model) => mapToTransferEntity(model)).toList();
  }
}
