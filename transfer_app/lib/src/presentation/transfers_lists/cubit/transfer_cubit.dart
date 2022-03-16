import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transfer_app/src/domain/entity/transfer_entity.dart';
import 'package:transfer_app/src/domain/use_case/fetch_transfers_use_case.dart';

part 'transfer_state.dart';

class TransferCubit extends Cubit<TransferState> {
  TransferCubit(this.useCase) : super(const Loading());

  final FetchTransfersUseCase useCase;

  Future<void> getTransfers() async {
    emit(const Loading());
    try {
      final transfers = await useCase.call();
      emit(Loaded(transfers));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
