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
      (fields[1] as List?)?.cast<dynamic>(),
      (fields[2] as List?)?.cast<dynamic>(),
      (fields[3] as List?)?.cast<dynamic>(),
      (fields[4] as List?)?.cast<dynamic>(),
      (fields[5] as List?)?.cast<dynamic>(),
      (fields[6] as List?)?.cast<dynamic>(),
      fields[0] as int?,
      fields[7] as String?,
      fields[9] as String?,
      fields[8] as String?,
      fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Advancemodel obj) {
    writer
      ..writeByte(11)
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
      ..write(obj.Wings)
      ..writeByte(7)
      ..write(obj.image)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.reps)
      ..writeByte(10)
      ..write(obj.workoutname);
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
