part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.done({required String city}) = _Done;
  const factory CitiesState.error({required Failure failure}) = _Error;
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.isEmpty() = _IsEmpty;
}
