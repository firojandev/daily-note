import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteNoteUseCase {
  final NoteRepository _repository;

  DeleteNoteUseCase(this._repository);

  Future<Either<NoteError, Unit>> call(String id) async {
    try {
      await _repository.deleteNote(id);
      return right(unit);
    } on Exception catch (_) {
      return left(NoteError(message: 'No note found'));
    }
  }
}
