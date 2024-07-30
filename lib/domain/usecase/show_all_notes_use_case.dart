import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/model/note.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ShowAllNotesUseCase {
  final NoteRepository _repository;

  ShowAllNotesUseCase(this._repository);

  Future<Either<NoteError, List<Note>>> call() async {
    try {
      final notesDTO = _repository.getAllNotes();
      final notes = (notesDTO..sort()).map((note) => note.toDomain()).toList();
      return right(notes);
    } on Exception catch (_) {
      return left(
        NoteError(message: 'No notes found..\nclick + to add new one.'),
      );
    }
  }
}
