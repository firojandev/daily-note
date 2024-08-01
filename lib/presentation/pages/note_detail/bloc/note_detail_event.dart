part of 'note_detail_bloc.dart';

@freezed
class NoteDetailEvent with _$NoteDetailEvent{
  const factory NoteDetailEvent.showNoteDetail(String noteId) = _ShowNoteDetail;
  const factory NoteDetailEvent.toggleToDoCheckBox(String noteId) = _ToggleToDoCheckBox;
  
}