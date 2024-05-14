// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InitAdapter extends TypeAdapter<Init> {
  @override
  final int typeId = 1;

  @override
  Init read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Init(
      name: fields[0] as String,
      email: fields[1] as String,
      password: fields[2] as String,
      course: fields[3] as String,
      graduation: fields[4] as String,
    )..id = fields[5] as String?;
  }

  @override
  void write(BinaryWriter writer, Init obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.course)
      ..writeByte(4)
      ..write(obj.graduation)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
