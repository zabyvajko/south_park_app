import 'package:flutter/material.dart';

void main() {
  runApp(const SouthParkApp());
}

class SouthParkApp extends StatelessWidget {
  const SouthParkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'South Park',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        dividerColor: Colors.white24,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 31, 31, 31),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      routes: {
        '/': (context) => const CharactersListScreen(),
        '/character': (context) => const CharacterScreen(),
      },
    );
  }
}

class CharactersListScreen extends StatefulWidget {
  const CharactersListScreen({super.key});

  @override
  State<CharactersListScreen> createState() => _CharactersListScreenState();
}

class _CharactersListScreenState extends State<CharactersListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('South Park'),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) {
            const characterName = '123';
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
          }),
    );
  }
}

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CharacterName'),
      ),
    );
  }
}
