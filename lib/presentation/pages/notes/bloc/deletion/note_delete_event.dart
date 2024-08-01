part of 'note_delete_bloc.dart';

@freezed
class NoteDeleteEvent with _$NoteDeleteEvent{
  const factory NoteDeleteEvent.toggleSelect(String id) = _ToggleSelect;
  const factory NoteDeleteEvent.delete() = _Delete;
  const factory NoteDeleteEvent.clearAll() = _ClearAll;
}