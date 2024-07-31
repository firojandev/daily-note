import 'package:daily_note/domain/usecase/delete_note_use_case.dart';
import 'package:daily_note/presentation/widgets/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../di/di.dart';
import '../../../../routes/app_router.dart';

part 'note_action_bloc.freezed.dart';
part 'note_action_event.dart';
part 'note_action_state.dart';

class NoteActionBloc extends Bloc<NoteActionEvent, NoteActionState> {
  final DeleteNoteUseCase _useCase;

  NoteActionBloc(this._useCase) : super(NoteActionState.initial()) {
    on<_DeleteNote>((event, emit) async {
      final failureOrSuccess = await _useCase(event.noteId);

      failureOrSuccess.fold(
        (failure) {
          emit(NoteActionState.deleteFailure(message: failure.message));
          getIt<AppRouter>()
              .context
              .showToast('${failure.message}', isError: true);
        },
        (success) {
          emit(const NoteActionState.deleteSuccess());
          getIt<AppRouter>().navigate(const NotesRoute());
          getIt<AppRouter>().context.showToast('Note Deleted.');
        },
      );
    });
  }
}
