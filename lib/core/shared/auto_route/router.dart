import 'package:auto_route/auto_route.dart';

import '/core/shared/auto_route/pages.dart';

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
  ];
}