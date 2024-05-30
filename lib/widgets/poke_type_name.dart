import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants_strings.dart';
import 'package:flutter_application_1/model/model_pokedex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeTypeName extends StatelessWidget {
  final Welcome pokemon;
  const PokeTypeName({super.key,required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(pokemon.name ?? '', style: Constants.getPokeChipTypeTextStyle(),)),
              Text('#${pokemon.num}', style: Constants.getPokeChipTypeTextStyle(),)
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '', style: Constants.getPokeChipTypeTextStyle(),),backgroundColor: Colors.grey,),
      
        ],
      ),
    );
  }
}
