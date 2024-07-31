// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:daily_note/data/local/database.dart' as _i698;
import 'package:daily_note/data/local/note_repository_impl.dart' as _i774;
import 'package:daily_note/domain/database/database.dart' as _i262;
import 'package:daily_note/domain/repository/NoteRepository.dart' as _i685;
import 'package:daily_note/domain/usecase/add_note_use_case.dart' as _i149;
import 'package:daily_note/domain/usecase/delete_multiple_note_use_case.dart'
    as _i683;
import 'package:daily_note/domain/usecase/delete_note_use_case.dart' as _i98;
import 'package:daily_note/domain/usecase/get_note_use_case.dart' as _i994;
import 'package:daily_note/domain/usecase/show_all_notes_use_case.dart'
    as _i306;
import 'package:daily_note/domain/usecase/update_note_use_case.dart' as _i301;
import 'package:daily_note/domain/usecase/use_case.dart' as _i252;
import 'package:daily_note/presentation/pages/addupdatenote/bloc/add_update_bloc.dart'
    as _i215;
import 'package:daily_note/presentation/pages/addupdatenote/bloc/form/add_update_form_bloc.dart'
    as _i60;
import 'package:daily_note/presentation/pages/note_detail/bloc/note_detail_bloc.dart'
    as _i204;
import 'package:daily_note/presentation/pages/notes/bloc/deletion/note_delete_bloc.dart'
    as _i182;
import 'package:daily_note/presentation/pages/notes/bloc/note_bloc.dart'
    as _i928;
import 'package:daily_note/presentation/routes/app_router.dart' as _i407;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i407.AppRouter>(() => _i407.AppRouter());
    gh.lazySingleton<_i262.Database>(() => _i698.LocalDbImpl());
    gh.lazySingleton<_i685.NoteRepository>(
        () => _i774.NoteRepositoryImpl(gh<_i262.Database>()));
    gh.factory<_i683.DeleteMultipleNoteUseCase>(
        () => _i683.DeleteMultipleNoteUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i994.GetNoteUseCase>(
        () => _i994.GetNoteUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i301.UpdateNoteUseCase>(
        () => _i301.UpdateNoteUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i306.ShowAllNotesUseCase>(
        () => _i306.ShowAllNotesUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i149.AddNoteUseCase>(
        () => _i149.AddNoteUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i98.DeleteNoteUseCase>(
        () => _i98.DeleteNoteUseCase(gh<_i685.NoteRepository>()));
    gh.factory<_i204.NoteDetailBloc>(() => _i204.NoteDetailBloc(
          gh<_i994.GetNoteUseCase>(),
          gh<_i301.UpdateNoteUseCase>(),
        ));
    gh.factory<_i928.NoteBloc>(
        () => _i928.NoteBloc(gh<_i252.ShowAllNotesUseCase>()));
    gh.factory<_i215.AddUpdateBloc>(() => _i215.AddUpdateBloc(
          gh<_i252.AddNoteUseCase>(),
          gh<_i252.UpdateNoteUseCase>(),
        ));
    gh.factory<_i182.NoteDeleteBloc>(
        () => _i182.NoteDeleteBloc(gh<_i683.DeleteMultipleNoteUseCase>()));
    gh.factory<_i60.AddUpdateFormBloc>(
        () => _i60.AddUpdateFormBloc(gh<_i215.AddUpdateBloc>()));
    return this;
  }
}
