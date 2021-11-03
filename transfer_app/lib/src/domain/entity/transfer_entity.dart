import 'package:equatable/equatable.dart';

class TransferEntity extends Equatable {
  const TransferEntity({
    required this.id,
    required this.senderName,
    required this.amount,
    required this.createdAt,
  });

  final String id;
  final String senderName;
  final double amount;
  final String createdAt;

  @override
  List<Object?> get props => [
        id,
        senderName,
        amount,
        createdAt,
      ];
}
