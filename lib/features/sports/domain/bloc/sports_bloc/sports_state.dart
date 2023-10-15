part of 'sports_bloc.dart';

@freezed
class SportsState with _$SportsState {
  const factory SportsState.initial() = _Initial;
  const factory SportsState.done({required List<AvaliableDays>? avaliableDays}) = _Done;
  const factory SportsState.error({required Failure failure}) = _Error;
  const factory SportsState.loading() = _Loading;
}
