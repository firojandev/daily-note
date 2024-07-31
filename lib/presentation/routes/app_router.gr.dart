// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:daily_note/domain/model/note.dart' as _i6;
import 'package:daily_note/presentation/pages/addupdatenote/add_update_note_page.dart'
    as _i1;
import 'package:daily_note/presentation/pages/notes/notes_page.dart' as _i2;
import 'package:daily_note/presentation/pages/splash/splash_page.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AddUpdateNoteRoute.name: (routeData) {
      final args = routeData.argsAs<AddUpdateNoteRouteArgs>(
          orElse: () => const AddUpdateNoteRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddUpdateNotePage(
          key: args.key,
          note: args.note,
        ),
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
class AddUpdateNoteRoute extends _i4.PageRouteInfo<AddUpdateNoteRouteArgs> {
  AddUpdateNoteRoute({
    _i5.Key? key,
    _i6.Note? note,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          AddUpdateNoteRoute.name,
          args: AddUpdateNoteRouteArgs(
            key: key,
            note: note,
          ),
          initialChildren: children,
        );

  static const String name = 'AddUpdateNoteRoute';

  static const _i4.PageInfo<AddUpdateNoteRouteArgs> page =
      _i4.PageInfo<AddUpdateNoteRouteArgs>(name);
}

class AddUpdateNoteRouteArgs {
  const AddUpdateNoteRouteArgs({
    this.key,
    this.note,
  });

  final _i5.Key? key;

  final _i6.Note? note;

  @override
  String toString() {
    return 'AddUpdateNoteRouteArgs{key: $key, note: $note}';
  }
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
