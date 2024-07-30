import 'package:daily_note/common/extension/string.dart';
import 'package:daily_note/data/dto/note_dto.dart';
import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/model/note.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateNoteUseCase {
  final NoteRepository _repository;

  UpdateNoteUseCase(this._repository);

  Future<Either<NoteError, Unit>> call(Note note) async {
    try {
      final validateNote = note.copyWith(
        todos: note.todos.where((todo) => todo.title.isNotEmptyString).toList(),
      );
      final noteDTO = NoteDTO.fromNote(validateNote);
      await _repository.addUpdateNote(noteDTO);
      return right(unit);
    } on Exception catch (_) {
      return left(NoteError(message: 'Failed to update note'));
    }
  }
}
