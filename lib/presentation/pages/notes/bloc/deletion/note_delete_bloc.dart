import 'package:daily_note/di/di.dart';
import 'package:daily_note/domain/usecase/delete_multiple_note_use_case.dart';
import 'package:daily_note/presentation/routes/app_router.dart';
import 'package:daily_note/presentation/widgets/toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'note_delete_bloc.freezed.dart';

part 'note_delete_event.dart';

part 'note_delete_state.dart';

@injectable
class NoteDeleteBloc extends Bloc<NoteDeleteEvent, NoteDeleteState> {
  final DeleteMultipleNoteUseCase _useCase;

  //* check is current note selected or not.
  bool isSelected(String? id) =>
      (id != null) &&
      (state is _Selected) &&
      (state as _Selected).selectedIds.contains(id);

  NoteDeleteBloc(this._useCase) : super(const NoteDeleteState.initial()) {
    //select unselect for deletion

    on<_ToggleSelect>((event, emit) {
      if (state is _Selected) {
        final state = this.state as _Selected;
        final selectedIds = List<String>.from(state.selectedIds);
        if (selectedIds.contains(event.id)) {
          selectedIds.remove(event.id);
          if (selectedIds.isEmpty) {
            add(const _ClearAll());
          }
        } else {
          selectedIds.add(event.id);
        }
        emit(state.copyWith(selectedIds: selectedIds));
      } else {
        emit(NoteDeleteState.selected([event.id]));
      }
    });

    //clear all selected notes
    on<_ClearAll>((event, emit) => emit(const NoteDeleteState.initial()));

    on<_Delete>((event, emit) async {
      if (state is _Selected) {
        final selectedIds = (state as _Selected).selectedIds;

        emit(const NoteDeleteState.deleting());

        final failureOrSuccess = await _useCase(selectedIds);

        failureOrSuccess.fold((error) {
          emit(NoteDeleteState.selected(selectedIds));
          getIt<AppRouter>()
              .context
              .showToast('${error.message}', isError: true);
        }, (_) {
          emit(const NoteDeleteState.deleteSuccess());
          getIt<AppRouter>().context.showToast('Note deleted successfully');
        });
      }
    });
  }
}
