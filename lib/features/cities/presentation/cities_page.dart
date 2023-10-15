import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/cities/presentation/cities_sub_page.dart';
import '/features/cities/domain/bloc/cities_bloc/cities_bloc.dart';

/// The CitiesPage class is a simple stateless widget that creates a [CitiesBloc]
/// provider and wraps it around a [CitiesSubPage] widget.
/// This allows the [CitiesSubPage] widget to access the [CitiesBloc] and get the
/// latest list of cities to display.
@RoutePage()
class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CitiesBloc>(
      create: (BuildContext context) => CitiesBloc(),
      child: const CitiesSubPage(),
    );
  }
}
