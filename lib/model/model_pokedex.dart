// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    int? id;
    String? num;
    String? name;
    String? img;
    List<String>? type;
    String? height;
    String? weight;
    String? candy;
    int? candyCount;
    String? egg;
    double? spawnChance;
    int? avgSpawns;
    String? spawnTime;
    List<double>? multipliers;
    List<String>? weaknesses;
    List<NextEvolution>? nextEvolution;

    Welcome({
        this.id,
        this.num,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
        this.multipliers,
        this.weaknesses,
        this.nextEvolution,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: json["type"] == null ? [] : List<String>.from(json["type"]!.map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"],
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"] == null ? [] : List<double>.from(json["multipliers"]!.map((x) => x?.toDouble())),
        weaknesses: json["weaknesses"] == null ? [] : List<String>.from(json["weaknesses"]!.map((x) => x)),
        nextEvolution: json["next_evolution"] == null ? [] : List<NextEvolution>.from(json["next_evolution"]!.map((x) => NextEvolution.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers == null ? [] : List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses": weaknesses == null ? [] : List<dynamic>.from(weaknesses!.map((x) => x)),
        "next_evolution": nextEvolution == null ? [] : List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
    };
}

class NextEvolution {
    String? num;
    String? name;

    NextEvolution({
        this.num,
        this.name,
    });

    factory NextEvolution.fromJson(Map<String, dynamic> json) => NextEvolution(
        num: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
    };
}
