// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:daily_note/domain/model/note.dart' as _i7;
import 'package:daily_note/presentation/pages/addupdatenote/add_update_note_page.dart'
    as _i1;
import 'package:daily_note/presentation/pages/note_detail/note_detail_page.dart'
    as _i2;
import 'package:daily_note/presentation/pages/notes/notes_page.dart' as _i3;
import 'package:daily_note/presentation/pages/splash/splash_page.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AddUpdateNoteRoute.name: (routeData) {
      final args = routeData.argsAs<AddUpdateNoteRouteArgs>(
          orElse: () => const AddUpdateNoteRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddUpdateNotePage(
          key: args.key,
          note: args.note,
        ),
      );
    },
    NoteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NoteDetailRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.NoteDetailPage(
          key: args.key,
          noteId: args.noteId,
        ),
      );
    },
    NotesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NotesPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddUpdateNotePage]
class AddUpdateNoteRoute extends _i5.PageRouteInfo<AddUpdateNoteRouteArgs> {
  AddUpdateNoteRoute({
    _i6.Key? key,
    _i7.Note? note,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          AddUpdateNoteRoute.name,
          args: AddUpdateNoteRouteArgs(
            key: key,
            note: note,
          ),
          initialChildren: children,
        );

  static const String name = 'AddUpdateNoteRoute';

  static const _i5.PageInfo<AddUpdateNoteRouteArgs> page =
      _i5.PageInfo<AddUpdateNoteRouteArgs>(name);
}

class AddUpdateNoteRouteArgs {
  const AddUpdateNoteRouteArgs({
    this.key,
    this.note,
  });

  final _i6.Key? key;

  final _i7.Note? note;

  @override
  String toString() {
    return 'AddUpdateNoteRouteArgs{key: $key, note: $note}';
  }
}

/// generated route for
/// [_i2.NoteDetailPage]
class NoteDetailRoute extends _i5.PageRouteInfo<NoteDetailRouteArgs> {
  NoteDetailRoute({
    _i8.Key? key,
    required String noteId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          NoteDetailRoute.name,
          args: NoteDetailRouteArgs(
            key: key,
            noteId: noteId,
          ),
          initialChildren: children,
        );

  static const String name = 'NoteDetailRoute';

  static const _i5.PageInfo<NoteDetailRouteArgs> page =
      _i5.PageInfo<NoteDetailRouteArgs>(name);
}

class NoteDetailRouteArgs {
  const NoteDetailRouteArgs({
    this.key,
    required this.noteId,
  });

  final _i8.Key? key;

  final String noteId;

  @override
  String toString() {
    return 'NoteDetailRouteArgs{key: $key, noteId: $noteId}';
  }
}

/// generated route for
/// [_i3.NotesPage]
class NotesRoute extends _i5.PageRouteInfo<void> {
  const NotesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
