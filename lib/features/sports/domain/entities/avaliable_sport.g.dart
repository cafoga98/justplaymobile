// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliable_sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvaliableSport _$AvaliableSportFromJson(Map<String, dynamic> json) =>
    AvaliableSport(
      genrGame: json['genrGame'] as String?,
      time: json['time'] as String?,
      shortDescription: json['shortDescription'] as String?,
      carousel: (json['carousel'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      host: json['host'] == null
          ? null
          : Host.fromJson(json['host'] as Map<String, dynamic>),
      eventTitle: json['eventTitle'] as String?,
      address: json['address'] as String?,
      duration: json['duration'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      players: (json['players'] as List<dynamic>?)
          ?.map((e) => Host.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxPlayers: json['maxPlayers'] as String?,
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AvaliableSportToJson(AvaliableSport instance) =>
    <String, dynamic>{
      'genrGame': instance.genrGame,
      'time': instance.time,
      'shortDescription': instance.shortDescription,
      'carousel': instance.carousel,
      'host': instance.host,
      'eventTitle': instance.eventTitle,
      'address': instance.address,
      'duration': instance.duration,
      'price': instance.price,
      'description': instance.description,
      'amenities': instance.amenities,
      'players': instance.players,
      'maxPlayers': instance.maxPlayers,
      'recommendations': instance.recommendations,
    };
