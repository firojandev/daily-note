
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
abstract class DailyNoteException implements Exception, _$DailyNoteException {
  factory DailyNoteException.noRecords() = NoRecordsException;
  factory DailyNoteException.empty(String message) = EmptyException;
  factory DailyNoteException.failedToParse() = FailedToParseException;
}