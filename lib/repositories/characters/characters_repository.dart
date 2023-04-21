import 'package:dio/dio.dart';
import 'package:south_park_app/repositories/characters/models/characters.dart';

class CharactersRepository {
  Future<List<Characters>> getCharactersList() async {
    final response = await Dio().get('https://spapi.dev/api/characters');
    final data = response.data as Map<String, dynamic>;
    final charactersList = data.entries
        .map((e) => Characters(
              name: (e.value as Map<String, dynamic>)['name'],
              sex: (e.value as Map<String, dynamic>)['sex'],
            ))
        .toList();
    return charactersList;
  }
}
