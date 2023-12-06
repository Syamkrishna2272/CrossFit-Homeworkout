// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beginner_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BeginnermodelAdapter extends TypeAdapter<Beginnermodel> {
  @override
  final int typeId = 3;

  @override
  Beginnermodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Beginnermodel(
      (fields[1] as List?)?.cast<dynamic>(),
      (fields[2] as List?)?.cast<dynamic>(),
      (fields[3] as List?)?.cast<dynamic>(),
      (fields[4] as List?)?.cast<dynamic>(),
      fields[0] as int?,
      fields[5] as String?,
      fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Beginnermodel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.Chestbeginner)
      ..writeByte(2)
      ..write(obj.Shoulderbeginner)
      ..writeByte(3)
      ..write(obj.Legbeginenr)
      ..writeByte(4)
      ..write(obj.Absbeginner)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BeginnermodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
