import 'package:daily_note/common/utils/exception.dart';
import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/model/note.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNoteUseCase {
  final NoteRepository _repository;

  GetNoteUseCase(this._repository);

  Future<Either<NoteError, Note>> call(String id) async {
    try {
      final noteDto = await _repository.getNote(id);
      final note = noteDto.toDomain();
      return right(note);
    } on Exception catch (e) {
      if (e is NoRecordsException) {
        return left(NoteError(message: 'No note found.'));
      }

      return left(
          NoteError(message: 'Failed to load note, please try again later'));
    }
  }
}
