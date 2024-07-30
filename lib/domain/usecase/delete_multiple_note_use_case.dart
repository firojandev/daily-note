import 'package:daily_note/domain/model/error.dart';
import 'package:daily_note/domain/repository/NoteRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DeleteMultipleNoteUseCase {
  final NoteRepository _repository;

  DeleteMultipleNoteUseCase(this._repository);

  Future<Either<NoteError, Unit>> call(List<String> ids) async {
    try {
      await _repository.deleteMultiNotes(ids);
      return right(unit);
    } on Exception catch (_) {
      return left(NoteError(message: 'Failed to delete note, try again later'));
    }
  }
}
