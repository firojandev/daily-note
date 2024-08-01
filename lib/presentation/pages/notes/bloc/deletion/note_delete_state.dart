part of 'note_delete_bloc.dart';

@freezed
class NoteDeleteState  with  _$NoteDeleteState{
  const factory NoteDeleteState.initial() = _Initial;
  const factory NoteDeleteState.selected(List<String> selectedIds) = _Selected;
  const factory NoteDeleteState.deleting() = _Deleting;
  const factory NoteDeleteState.deleteSuccess() = _DeleteSuccess;
  const factory NoteDeleteState.deleteFailed() = _DeleteFailure;
}