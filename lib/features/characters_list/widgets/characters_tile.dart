import 'package:flutter/material.dart';
import 'package:south_park_app/repositories/characters/models/characters_name.dart';

class CharactersTile extends StatelessWidget {
  const CharactersTile({
    super.key,
    required this.characterName,
  });

  final CharactersName characterName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.asset(
        'assets/png/Eric-cartman.png',
        height: 30,
        width: 30,
      ),
      title: Text(
        characterName.name,
        style: theme.textTheme.bodyMedium,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/character',
          arguments: characterName,
        );
      },
    );
  }
}