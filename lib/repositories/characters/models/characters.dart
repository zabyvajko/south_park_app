import 'package:json_annotation/json_annotation.dart';

part 'characters.g.dart';

@JsonSerializable()
class Characters {
  final int id;
  final String name;
  final String sex;

  Characters({required this.id, required this.name, required this.sex});

  factory Characters.fromJson(Map<String, dynamic> json) => _$CharactersFromJson(json);
  Map<String, dynamic> toJson() => _$CharactersToJson(this);
}
