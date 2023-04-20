import 'package:flutter/material.dart';

class CharactersTile extends StatelessWidget {
  const CharactersTile({
    super.key,
    required this.characterName,
  });

  final String characterName;

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
        characterName,
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