// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Characters _$CharactersFromJson(Map<String, dynamic> json) => Characters(
      id: json['id'] as int,
      name: json['name'] as String,
      sex: json['sex'] as String,
    );

Map<String, dynamic> _$CharactersToJson(Characters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sex': instance.sex,
    };
