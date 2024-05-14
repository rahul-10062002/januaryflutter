

import 'package:hive_flutter/hive_flutter.dart';

part 'usermodel.g.dart';
@HiveType(typeId: 1)
class Init{
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String password;

  @HiveField(3)
  final String course;

  @HiveField(4)
  final String graduation;

  @HiveField(5)
   String ? id;

  Init({required this.name,required this.email,required this.password,required this.course,required this.graduation}){
    id=DateTime.now().microsecondsSinceEpoch.toString();
  }
}