import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myapp_bar.dart';
import 'package:flutter_application_1/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Expanded(child: PokemonList()),
    );
  }
}
