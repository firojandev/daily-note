import 'package:daily_note/data/dto/note_dto.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/database/database.dart';

@LazySingleton(as: NoteRepository)
class NoteRepositoryImpl implements NoteRepository {
  final Database _database;

  NoteRepositoryImpl(this._database);

  @override
  Future addUpdateNote(NoteDTO note) async {
    try {
      await _database.addUpdate(note.id!, note);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteMultiNotes(List<String> ids) async {
    try {
      await _database.deleteAll(ids);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteNote(String id) async {
    try {
      await _database.delete(id);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  List<NoteDTO> getAllNotes() {
    try {
      final notesDto =
          _database.getAll().map((note) => note as NoteDTO).toList();
      return notesDto;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<NoteDTO> getNote(String id) async {
    try {
      final noteDto = await _database.get(id) as NoteDTO;
      return noteDto;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
