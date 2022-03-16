part of 'transfer_cubit.dart';

abstract class TransferState {
  const TransferState();
}

class Loading extends TransferState {
  const Loading();
}

class Loaded extends TransferState {
  const Loaded(this.transfers);

  final List<TransferEntity> transfers;
}

class Error extends TransferState {
  const Error(this.error);

  final String error;
}
