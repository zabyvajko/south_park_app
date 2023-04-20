import 'package:south_park_app/features/character/character.dart';
import 'package:south_park_app/features/characters_list/characters_list.dart';

final routes = {
        '/': (context) => const CharactersListScreen(),
        '/character': (context) => const CharacterScreen(),
      };