import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/core/shared/auto_route/pages.dart';
import '/features/sports/domain/entities/avaliable_sport.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();

  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, path: '/', initial: true),
    AutoRoute(page: CitiesRoute.page, path: '/cities', initial: false),
    AutoRoute(page: SportRoute.page, path: '/sports', initial: false),
    AutoRoute(page: DetailRoute.page, path: '/detail', initial: false),
  ];
}