import 'package:dio/dio.dart';
import 'package:south_park_app/repositories/characters/models/characters.dart';

class CharactersRepository {
  Future<List<Data>> getCharactersList() async {
    final response = await Dio().get('https://spapi.dev/api/characters');
    final data = response.data.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>)).toList();
    return data;

  }
}
