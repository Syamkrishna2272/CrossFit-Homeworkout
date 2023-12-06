// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdvancemodelAdapter extends TypeAdapter<Advancemodel> {
  @override
  final int typeId = 4;

  @override
  Advancemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Advancemodel(
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as String,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, Advancemodel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.Chest)
      ..writeByte(2)
      ..write(obj.Shoulder)
      ..writeByte(3)
      ..write(obj.Biceps)
      ..writeByte(4)
      ..write(obj.Triceps)
      ..writeByte(5)
      ..write(obj.Leg)
      ..writeByte(6)
      ..write(obj.Wings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdvancemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
