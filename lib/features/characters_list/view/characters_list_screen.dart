import 'package:flutter/material.dart';
import 'package:south_park_app/features/characters_list/widgets/widgets.dart';
import 'package:south_park_app/repositories/characters/characters_repository.dart';
import 'package:south_park_app/repositories/characters/models/characters_name.dart';

class CharactersListScreen extends StatefulWidget {
  const CharactersListScreen({super.key});

  @override
  State<CharactersListScreen> createState() => _CharactersListScreenState();
}

class _CharactersListScreenState extends State<CharactersListScreen> {
  List<CharactersName>? _charactersList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('South Park'),
      ),
      body: (_charactersList == null)
          ? const SizedBox()
          : ListView.separated(
              itemCount: _charactersList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final characterName = _charactersList![i];
                return CharactersTile(characterName: characterName);
              }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () async {
          _charactersList = await CharactersRepository().getCharactersList();
          setState(() {});
        },
      ),
    );
  }
}
