import 'package:auto_route/auto_route.dart';
import 'package:daily_note/presentation/routes/app_router.gr.dart';
import 'package:injectable/injectable.dart';

export 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter{

  @override
  RouteType get defaultRouteType {
    return const RouteType.custom(
      durationInMilliseconds: 200,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    );
  }

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/notes',
      page: NotesRoute.page,
    ),
  ];

}