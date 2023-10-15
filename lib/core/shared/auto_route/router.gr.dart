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
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailPage(
          key: args.key,
          avaliableSport: args.avaliableSport,
        ),
      );
    },
    SportRoute.name: (routeData) {
      final args = routeData.argsAs<SportRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SportPage(
          key: args.key,
          city: args.city,
        ),
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
/// [DetailPage]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required AvaliableSport avaliableSport,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            avaliableSport: avaliableSport,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const PageInfo<DetailRouteArgs> page = PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.avaliableSport,
  });

  final Key? key;

  final AvaliableSport avaliableSport;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, avaliableSport: $avaliableSport}';
  }
}

/// generated route for
/// [SportPage]
class SportRoute extends PageRouteInfo<SportRouteArgs> {
  SportRoute({
    Key? key,
    required String city,
    List<PageRouteInfo>? children,
  }) : super(
          SportRoute.name,
          args: SportRouteArgs(
            key: key,
            city: city,
          ),
          initialChildren: children,
        );

  static const String name = 'SportRoute';

  static const PageInfo<SportRouteArgs> page = PageInfo<SportRouteArgs>(name);
}

class SportRouteArgs {
  const SportRouteArgs({
    this.key,
    required this.city,
  });

  final Key? key;

  final String city;

  @override
  String toString() {
    return 'SportRouteArgs{key: $key, city: $city}';
  }
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
