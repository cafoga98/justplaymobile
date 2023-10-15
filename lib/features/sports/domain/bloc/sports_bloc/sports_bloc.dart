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
