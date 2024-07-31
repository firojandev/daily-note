import 'package:daily_note/domain/usecase/get_note_use_case.dart';
import 'package:daily_note/domain/usecase/update_note_use_case.dart';
import 'package:daily_note/presentation/widgets/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../di/di.dart';
import '../../../../domain/model/note.dart';
import '../../../routes/app_router.dart';

part 'note_detail_bloc.freezed.dart';
part 'note_detail_event.dart';
part 'note_detail_state.dart';

@injectable
class NoteDetailBloc extends Bloc<NoteDetailEvent, NoteDetailState> {
  final GetNoteUseCase _useCase;
  final UpdateNoteUseCase _updateseCase;

  NoteDetailBloc(this._useCase, this._updateseCase)
      : super(NoteDetailState.initial()) {
    //Note details
    on<_ShowNoteDetail>((event, emit) async {
      emit(const NoteDetailState.loading());

      final failureOrSuccess = await _useCase(event.noteId);

      failureOrSuccess.fold((error) {
        emit(NoteDetailState.error(message: error.message));
      }, (note) {
        emit(NoteDetailState.loaded(note));
      });
    });

    //Toggle todo checkbox
    on<_ToggleToDoCheckBox>((event, emit) async {
      if (state is _Loaded) {
        final state = this.state as _Loaded;
        final updatedNote = state.note.copyWith(
          todos: state.note.todos.map((todo) {
            if (todo.id == event.noteId) {
              return todo.copyWith(completed: !todo.completed);
            }
            return todo;
          }).toList(),
        );

        final failureOrSuccess = await _updateseCase(updatedNote);
        failureOrSuccess.fold(
          (error) {
            getIt<AppRouter>()
                .context
                .showToast('👎  ${error.message}', isError: true);
          },
          (_) => emit(state.copyWith(note: updatedNote)),
        );
      }
    });
  }
}
