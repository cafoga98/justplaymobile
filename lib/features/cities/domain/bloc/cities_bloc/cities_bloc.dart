import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error_handle/failure.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

/// CitiesBloc Class
///
/// Manages the state and logic for handling city-related events and their associated states.
///
/// Example usage:
///
/// ```dart
/// final citiesBloc = CitiesBloc();
/// ```
class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc() : super(const CitiesState.initial()) {
    on<CitiesEvent>(_fetchCities);
  }

  /// Fetches cities based on the provided [CitiesEvent].
  _fetchCities(CitiesEvent event, Emitter<CitiesState> emit) async {
    emit(const CitiesState.loading());

    if(event.city.isEmpty || event.city == 'Choose City'){
      emit(const CitiesState.isEmpty());
    }else{
      emit(CitiesState.done(city: event.city));
    }
  }
}
