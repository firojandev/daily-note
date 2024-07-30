import 'package:daily_note/common/extension/string.dart';
import 'package:daily_note/data/dto/note_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/model/note.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class AddNoteUseCase {
  final NoteRepository _repository;
  final _uuid = const Uuid();

  AddNoteUseCase(this._repository);

  Future<Either<NoteError, Unit>> call(Note note) async {
    try {
      final validNote = note.copyWith(
        todos: note.todos.where((todo) => todo.title.isNotEmptyString).toList(),
      );
      final noteDTO = NoteDTO.fromNote(validNote);

      if (!noteDTO.validNote) {
        return left(
            NoteError(message: 'Failed to add note, Title is required'));
      }

      await _repository.addUpdateNote(noteDTO.copyWith(id: _uuid.v4()));
      return right(unit);
    } on Exception catch (_) {
      return left(NoteError(message: 'Failed to add note, please try again.'));
    }
  }
}
