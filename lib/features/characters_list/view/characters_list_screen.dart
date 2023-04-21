import 'package:flutter/material.dart';
import 'package:south_park_app/features/characters_list/widgets/widgets.dart';
import 'package:south_park_app/repositories/characters/characters_repository.dart';

class CharactersListScreen extends StatefulWidget {
  const CharactersListScreen({super.key});

  @override
  State<CharactersListScreen> createState() => _CharactersListScreenState();
}

class _CharactersListScreenState extends State<CharactersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('South Park'),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) {
            const characterName = '123';
            return const CharactersTile(characterName: characterName);
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () {
          CharactersRepository().getCharactersList();
        },
      ),
    );
  }
}
