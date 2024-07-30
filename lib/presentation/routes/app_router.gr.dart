// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:daily_note/presentation/pages/addupdatenote/add_update_note_page.dart'
    as _i1;
import 'package:daily_note/presentation/pages/notes/notes_page.dart' as _i2;
import 'package:daily_note/presentation/pages/splash/splash_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddUpdateNoteRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddUpdateNotePage(),
      );
    },
    NotesRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NotesPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddUpdateNotePage]
class AddUpdateNoteRoute extends _i4.PageRouteInfo<void> {
  const AddUpdateNoteRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AddUpdateNoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddUpdateNoteRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NotesPage]
class NotesRoute extends _i4.PageRouteInfo<void> {
  const NotesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
