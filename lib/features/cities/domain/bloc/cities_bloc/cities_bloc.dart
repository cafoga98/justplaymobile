import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error_handle/failure.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc() : super(const CitiesState.initial()) {
    on<CitiesEvent>(_fetchCities);
  }

  _fetchCities(CitiesEvent event, Emitter<CitiesState> emit) async {
    emit(const CitiesState.loading());

    if(event.city.isEmpty || event.city == 'Choose City'){
      emit(const CitiesState.isEmpty());
    }else{
      emit(CitiesState.done(city: event.city));
    }
  }
}
