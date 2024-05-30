import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants_strings.dart';
import 'package:flutter_application_1/model/model_pokedex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonInformation extends StatelessWidget {
  final Welcome pokemon;
  const PokemonInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInformationPokemon("Name", pokemon.name),
            _buildInformationPokemon("Height", pokemon.height),
            _buildInformationPokemon("Weight", pokemon.weight),
            _buildInformationPokemon("Spawn Time", pokemon.spawnTime),
            _buildInformationPokemon("Weakness", pokemon.weaknesses),
            _buildInformationPokemon("Candy", pokemon.candy),
            _buildInformationPokemon("Next Evolution", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationPokemon(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeTextsTypeTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            _getValueAsString(value),
            style: Constants.getPokeInfoTypeTextStyle(),
          )
        else if (value == null)
          Text(
            "Not available",
            style: Constants.getPokeInfoTypeTextStyle(),
          )
        else
          Text(
            value.toString(),
            style: Constants.getPokeInfoTypeTextStyle(),
          ),
      ],
    );
  }

  String _getValueAsString(dynamic value) {
    if (value is List<String>) {
      return value.join(' , ');
    } else if (value is List<NextEvolution>) {
      return value.map((e) => e.name).join(' , ');
    } else {
      return value.toString();
    }
  }
}
