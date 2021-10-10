// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'fetch_transfers.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) {
  return Transfer()
    ..id = json['id'] as String
    ..amount = (json['amount'] as num).toDouble()
    ..senderName = json['senderName'] as String
    ..createdAt = json['createdAt'] as String;
}

Map<String, dynamic> _$TransferToJson(Transfer instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'senderName': instance.senderName,
      'createdAt': instance.createdAt,
    };

GetAllTransfers$Query _$GetAllTransfers$QueryFromJson(
    Map<String, dynamic> json) {
  return GetAllTransfers$Query()
    ..getAllTransfers = (json['getAllTransfers'] as List<dynamic>)
        .map((e) => Transfer.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetAllTransfers$QueryToJson(
        GetAllTransfers$Query instance) =>
    <String, dynamic>{
      'getAllTransfers':
          instance.getAllTransfers.map((e) => e.toJson()).toList(),
    };
