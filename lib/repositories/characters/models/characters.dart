import 'package:json_annotation/json_annotation.dart';

part 'characters.g.dart';

@JsonSerializable()
class Characters {
  List<Data> data;

  Characters({required this.data});

  factory Characters.fromJson(Map<String,dynamic> json) => _$CharactersFromJson(json);
  Map<String,dynamic> toJson() => _$CharactersToJson(this);
}
@JsonSerializable()
class Data {
  final int id;
  final String name;
  final String sex;

  Data(this.id, {required this.name, required this.sex});

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
  Map<String,dynamic> toJson() => _$DataToJson(this);
}

