import '../../data/dto/note_dto.dart';

abstract class NoteRepository {
  List<NoteDTO> getAllNotes();

  Future<NoteDTO> getNote(String id);

  Future addUpdateNote(NoteDTO note);

  Future deleteNote(String id);

  Future deleteMultiNotes(List<String> ids);
}
