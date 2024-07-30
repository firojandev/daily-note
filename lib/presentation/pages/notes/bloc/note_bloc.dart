import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:daily_note/domain/model/note.dart';

import '../../../../domain/usecase/use_case.dart';

part 'note_bloc.freezed.dart';

part 'note_event.dart';

part 'note_state.dart';

@injectable
class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final ShowAllNotesUseCase _useCase;

  NoteBloc(this._useCase) : super(const NoteState.initial()) {
    on<_GetAllNotes>((event, emit) async {
      emit(const NoteState.loading());
      final failureOrSuccess = await _useCase();
      failureOrSuccess.fold((error) {
        emit(NoteState.error(error.message));
      }, (notes) {
        emit(NoteState.loaded(notes));
      });
    });
  }
}
