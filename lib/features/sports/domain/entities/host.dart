import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'host.g.dart';

@JsonSerializable()
class Host {
  String? name;
  String? profileImage;

  Host({this.name, this.profileImage});

  factory Host.fromJson(Map<String, dynamic> json) => _$HostFromJson(json);

  Map<String, dynamic> toJson() => _$HostToJson(this);
}