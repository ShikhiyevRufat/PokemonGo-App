import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model_pokedex.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<Welcome>> getPokeData() async {
    List<Welcome> listPoke = [];

    var result = await Dio().get(_url);
    var pokemonData = jsonDecode(result.data);

    if (pokemonData is List) {
    listPoke = pokemonData.map((e) => Welcome.fromJson(e)).toList();
    }
    debugPrint(listPoke.length.toString());


    return listPoke;
  }
}
