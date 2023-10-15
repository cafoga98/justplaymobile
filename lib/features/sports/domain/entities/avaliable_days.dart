import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
import 'package:justplaymobile/features/sports/domain/entities/avaliable_sport.dart';

part 'avaliable_days.g.dart';

@JsonSerializable()
class AvaliableDays {
  String? day;
  List<AvaliableSport>? items;

  AvaliableDays({this.day, this.items});

  factory AvaliableDays.fromJson(Map<String, dynamic> json) => _$AvaliableDaysFromJson(json);

  Map<String, dynamic> toJson() => _$AvaliableDaysToJson(this);
}