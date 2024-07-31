import 'package:daily_note/common/constants.dart';
import 'package:daily_note/presentation/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:daily_note/presentation/widgets/toast.dart';

import '../../../../di/di.dart';
import '../../../../domain/model/note.dart';
import '../../../../domain/usecase/use_case.dart';

part 'add_update_bloc.freezed.dart';

part 'add_update_event.dart';

part 'add_update_state.dart';

@injectable
class AddUpdateBloc extends Bloc<AddUpdateEvent, AddUpdateState> {
  final AddNoteUseCase _addNoteUseCase;
  final UpdateNoteUseCase _updateNoteUseCase;

  AddUpdateBloc(this._addNoteUseCase, this._updateNoteUseCase)
      : super(const AddUpdateState.initial()) {
    on<_AddNote>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess = await _addNoteUseCase(event.note);

      await Future.delayed(animationDuration);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast('${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().navigate(const NotesRoute());
        getIt<AppRouter>().context.showToast('Note added successfully');
      });
    });

    on<_UpdateNote>((event, emit) async {
      emit(const AddUpdateState.saving());

      final failureOrSuccess = await _updateNoteUseCase(event.note);

      await Future.delayed(animationDuration);

      failureOrSuccess.fold((failure) {
        emit(AddUpdateState.failed(message: failure.message));
        getIt<AppRouter>()
            .context
            .showToast('${failure.message}', isError: true);
      }, (_) {
        emit(const AddUpdateState.saved());
        getIt<AppRouter>().context.showToast('Note updated successfully!');
      });
    });
  }
}
