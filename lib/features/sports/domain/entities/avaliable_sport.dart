import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import '/features/sports/domain/entities/host.dart';

part 'avaliable_sport.g.dart';

@JsonSerializable()
class AvaliableSport {
  String? genrGame;
  String? time;
  String? shortDescription;
  List<String>? carousel;
  Host? host;
  String? eventTitle;
  String? address;
  String? duration;
  String? price;
  String? description;
  List<String>? amenities;
  List<Host>? players;
  String? maxPlayers;
  List<String>? recommendations;

  AvaliableSport({
    this.genrGame,
    this.time,
    this.shortDescription,
    this.carousel,
    this.host,
    this.eventTitle,
    this.address,
    this.duration,
    this.price,
    this.description,
    this.amenities,
    this.players,
    this.maxPlayers,
    this.recommendations,
  });

  factory AvaliableSport.fromJson(Map<String, dynamic> json) =>
      _$AvaliableSportFromJson(json);

  Map<String, dynamic> toJson() => _$AvaliableSportToJson(this);
}
