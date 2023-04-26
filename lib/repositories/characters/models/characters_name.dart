import 'package:json_annotation/json_annotation.dart';

part 'characters_name.g.dart';

@JsonSerializable()
class CharactersName {
  final int id;
  final String name;
  final String sex;

  CharactersName({required this.id, required this.name, required this.sex});

  factory CharactersName.fromJson(Map<String, dynamic> json) => _$CharactersNameFromJson(json);
  Map<String, dynamic> toJson() => _$CharactersNameToJson(this);
}
