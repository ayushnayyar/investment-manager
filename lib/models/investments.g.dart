// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investments.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvestmentsAdapter extends TypeAdapter<Investments> {
  @override
  final int typeId = 1;

  @override
  Investments read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Investments()
      .._savingsAccount = fields[0] as double
      .._stocks = fields[1] as double
      .._mutualFunds = fields[2] as double
      .._fixedDeposits = fields[3] as double
      .._bonds = fields[4] as double
      .._realEstate = fields[5] as double
      .._epf = fields[6] as double;
  }

  @override
  void write(BinaryWriter writer, Investments obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj._savingsAccount)
      ..writeByte(1)
      ..write(obj._stocks)
      ..writeByte(2)
      ..write(obj._mutualFunds)
      ..writeByte(3)
      ..write(obj._fixedDeposits)
      ..writeByte(4)
      ..write(obj._bonds)
      ..writeByte(5)
      ..write(obj._realEstate)
      ..writeByte(6)
      ..write(obj._epf);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvestmentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
