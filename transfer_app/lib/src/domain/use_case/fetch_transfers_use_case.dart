import 'package:transfer_app/src/domain/entity/transfer_entity.dart';
import 'package:transfer_app/src/repository/repository.dart';

class FetchTransfersUseCase {
  const FetchTransfersUseCase({required this.repository});

  final Repository repository;

  Future<List<TransferEntity>> call() => repository.getAllTransfers();
}
