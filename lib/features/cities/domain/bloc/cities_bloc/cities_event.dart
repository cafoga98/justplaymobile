part of 'cities_bloc.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.started({required String city}) = _Started;
}
