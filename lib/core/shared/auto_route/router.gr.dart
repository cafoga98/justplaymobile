// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    SportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SportPage(),
      );
    },
    CitiesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CitiesPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
  };
}

/// generated route for
/// [SportPage]
class SportRoute extends PageRouteInfo<void> {
  const SportRoute({List<PageRouteInfo>? children})
      : super(
          SportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SportRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CitiesPage]
class CitiesRoute extends PageRouteInfo<void> {
  const CitiesRoute({List<PageRouteInfo>? children})
      : super(
          CitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CitiesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
