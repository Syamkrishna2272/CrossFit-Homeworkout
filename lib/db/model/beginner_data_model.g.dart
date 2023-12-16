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
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Beginnermodel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.reps)
      ..writeByte(4)
      ..write(obj.workoutname);
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
