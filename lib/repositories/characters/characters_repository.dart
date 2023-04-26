import 'package:dio/dio.dart';
import 'package:south_park_app/repositories/characters/models/characters_name.dart';

class CharactersRepository {
  Future<List<CharactersName>> getCharactersList() async {
    final response = await Dio().get('https://spapi.dev/api/characters');
    final data =
        List<Map<String, dynamic>>.from(response.data['data']);
    final characterList = data.map((e) {
       return CharactersName(id: e['id'], name: e['name'], sex: e['sex'],);
      
    }).toList();
    return characterList;
  }
}
