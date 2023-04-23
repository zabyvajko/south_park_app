import 'package:dio/dio.dart';

class CharactersRepository {
  Future<List<Map<String, dynamic>>> getCharactersList() async {
    final response = await Dio().get('https://spapi.dev/api/characters');
    List<Map<String, dynamic>> characterList =
        List<Map<String, dynamic>>.from(response.data['data']);
    List<Map<String, dynamic>> filteredList = characterList
        .map((e) => {
              'id': e['id'],
              'name': e['name'],
              'sex': e['sex'],
            })
        .toList();
    return filteredList;
  }
}
