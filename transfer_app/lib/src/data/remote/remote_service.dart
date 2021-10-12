import 'package:transfer_app/src/data/graphql/query/fetch_transfers/fetch_transfers.dart'
    as fetch_transfers;
import 'package:artemis/artemis.dart';
import 'package:transfer_app/src/data/remote/remote_error.dart';

class RemoteService {
  RemoteService()
      : _artemisClient = ArtemisClient('http://localhost:4000/graphql');

  final ArtemisClient _artemisClient;

  Future<List<fetch_transfers.Transfer>> getAllTransfers() async {
    final response =
        await _artemisClient.execute(fetch_transfers.GetAllTransfersQuery());
    final data = response.data;
    if (data == null || response.hasErrors) {
      throw RemoteErrorResponse(response.errors?.first.message);
    }
    return data.getAllTransfers;
  }
}
