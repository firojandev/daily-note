import 'package:daily_note/app_bloc_observer.dart';
import 'package:daily_note/common/constants.dart';
import 'package:daily_note/data/dto/note_dto.dart';
import 'package:daily_note/data/dto/todo_dto.dart';
import 'package:daily_note/di/di.dart';
import 'package:daily_note/presentation/app.dart';
import 'package:daily_note/presentation/pages/addupdatenote/add_update_page.dart';
import 'package:daily_note/presentation/pages/addupdatenote/bloc/form/add_update_form_bloc.dart';
import 'package:daily_note/presentation/pages/notes/bloc/note_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  configureInjection();

  await Hive.initFlutter();
  Hive.registerAdapter(NoteDTOAdapter());
  Hive.registerAdapter(ToDoDTOAdapter());
  await Hive.openBox(databaseBox);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  //runApp(const App());
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (_) => getIt<NoteBloc>()..add(const NoteEvent.getAllNotes())
    ),
    BlocProvider(
        create:(_) => getIt<AddUpdateFormBloc>()
    ),
    BlocProvider(
        create:(_) => getIt<AddUpdateBloc>()
    ),
  ], child: const App()));
}
