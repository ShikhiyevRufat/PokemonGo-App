import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/constants_strings.dart';
import 'package:flutter_application_1/constants/ui_helper.dart';
import 'package:flutter_application_1/model/model_pokedex.dart';
import 'package:flutter_application_1/pages/detail_page.dart';
import 'package:flutter_application_1/widgets/poke_img.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final Welcome pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? "N/A",
                style: Constants.getPokeMonNameTextStyle(),
              ),
              Chip(
                  backgroundColor: Colors.grey,
                  label: Text(
                    pokemon.type![0],
                    style: Constants.getPokeChipTypeTextStyle(),
                  )),
              PokeImages(pokemon: pokemon)
            ],
          ),
        ),
      ),
    );
  }
}
