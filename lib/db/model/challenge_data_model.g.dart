// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class  FullChallengeAdapter extends TypeAdapter<FullChallenge> {
  @override
  final int typeId = 5;

  @override
  FullChallenge read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FullChallenge(
      count: (fields[0] as List).cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, FullChallenge obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullChallengeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
