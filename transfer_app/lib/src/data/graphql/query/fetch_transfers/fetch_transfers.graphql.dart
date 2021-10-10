// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'fetch_transfers.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Transfer extends JsonSerializable with EquatableMixin {
  Transfer();

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);

  late String id;

  late double amount;

  late String senderName;

  late String createdAt;

  @override
  List<Object?> get props => [id, amount, senderName, createdAt];
  @override
  Map<String, dynamic> toJson() => _$TransferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllTransfers$Query extends JsonSerializable with EquatableMixin {
  GetAllTransfers$Query();

  factory GetAllTransfers$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAllTransfers$QueryFromJson(json);

  late List<Transfer> getAllTransfers;

  @override
  List<Object?> get props => [getAllTransfers];
  @override
  Map<String, dynamic> toJson() => _$GetAllTransfers$QueryToJson(this);
}

final GET_ALL_TRANSFERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getAllTransfers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getAllTransfers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'amount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'senderName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetAllTransfersQuery
    extends GraphQLQuery<GetAllTransfers$Query, JsonSerializable> {
  GetAllTransfersQuery();

  @override
  final DocumentNode document = GET_ALL_TRANSFERS_QUERY_DOCUMENT;

  @override
  final String operationName = 'getAllTransfers';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetAllTransfers$Query parse(Map<String, dynamic> json) =>
      GetAllTransfers$Query.fromJson(json);
}
