// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutmodelAdapter extends TypeAdapter<Workoutmodel> {
  @override
  final int typeId = 1;

  @override
  Workoutmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Workoutmodel(
      category: fields[1] as String,
      workoutname: fields[2] as String,
      bodypart: fields[3] as String,
      reps: fields[4] as String,
      image: fields[5] as String,
      description: fields[6] as String?,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Workoutmodel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.workoutname)
      ..writeByte(3)
      ..write(obj.bodypart)
      ..writeByte(4)
      ..write(obj.reps)
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
      other is WorkoutmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
