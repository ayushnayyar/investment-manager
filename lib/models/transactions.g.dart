// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionsAdapter extends TypeAdapter<Transactions> {
  @override
  final int typeId = 3;

  @override
  Transactions read(BinaryReader reader) {
    // ignore: always_specify_types
    final numOfFields = reader.readByte();
    // ignore: always_specify_types, unused_local_variable
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    // ignore: always_specify_types
    return Transactions(transactionList: []);
  }

  @override
  void write(BinaryWriter writer, Transactions obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj._transactionList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionsAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
