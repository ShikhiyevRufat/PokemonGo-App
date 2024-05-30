import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model_pokedex.dart';
import 'package:flutter_application_1/services/pokedex_services.dart';
import 'package:flutter_application_1/widgets/list_design.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<Welcome>> _listPoke;

  @override
  void initState() {
    super.initState();
    _listPoke = PokeApi.getPokeData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Welcome>>(
        future: _listPoke,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Welcome> _listem = snapshot.data!;
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
                itemBuilder: (context, index) => PokeListItem(pokemon: _listem[index]),);
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Xeta geldi"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
