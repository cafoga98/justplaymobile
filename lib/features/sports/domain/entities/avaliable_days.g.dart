// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliable_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvaliableDays _$AvaliableDaysFromJson(Map<String, dynamic> json) =>
    AvaliableDays(
      day: json['day'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => AvaliableSport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvaliableDaysToJson(AvaliableDays instance) =>
    <String, dynamic>{
      'day': instance.day,
      'items': instance.items,
    };
