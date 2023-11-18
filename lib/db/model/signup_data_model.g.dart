// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class signupmodelAdapter extends TypeAdapter<signupmodel> {
  @override
  final int typeId = 2;

  @override
  signupmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return signupmodel(
      name: fields[1] as String,
      email: fields[2] as String,
      phone: fields[3] as String,
      password: fields[4] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, signupmodel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is signupmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
