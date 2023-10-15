import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error_handle/failure.dart';
import '/features/sports/domain/entities/avaliable_days.dart';
import '/features/sports/data/repositories/implementation/sports_repository.dart';

part 'sports_event.dart';

part 'sports_state.dart';

part 'sports_bloc.freezed.dart';

class SportsBloc extends Bloc<SportsEvent, SportsState> {
  final SportsRepository sportsRepository;

  SportsBloc({required this.sportsRepository})
      : super(const SportsState.initial()) {
    on<SportsEvent>(_fetchAvalibleSports);
  }

  /// _fetchAvalibleSports Function
  ///
  /// This private function is responsible for fetching available sports data in response to
  /// a [SportsEvent]. It emits state updates to a [SportsState] Emitter based on the
  /// result of the operation.
  ///
  /// - If the operation is successful, it emits a [SportsState.done] state with available sports data.
  /// - If an error occurs during the operation, it emits a [SportsState.error] state with the corresponding error.
  ///
  /// Parameters:
  /// - [event]: A [SportsEvent] that triggers the operation.
  /// - [emit]: An Emitter for emitting state updates.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// _fetchAvalibleSports(SportsEvent event, Emitter<SportsState> emit) async {
  ///   // Implementation of the function.
  /// }
  /// ```
  _fetchAvalibleSports(SportsEvent event, Emitter<SportsState> emit) async {
    emit(const SportsState.loading());
    final response = await sportsRepository.getAvalibleSports();
    response.fold(
      (left) {
        emit(SportsState.error(failure: left));
      },
      (right) {
        emit(SportsState.done(avaliableDays: right));
      },
    );
  }
}
