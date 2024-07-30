import 'package:daily_note/common/constants.dart';
import 'package:daily_note/common/utils/exception.dart';
import 'package:daily_note/domain/database/database.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Database)
class LocalDbImpl implements Database {
  @override
  Box get box => Hive.box(databaseBox);

  @override
  Future addUpdate<T>(String id, T item) async {
    try {
      await box.put(id, item);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future delete(String id) async {
    try {
      await box.delete(id);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteAll(List<String> keys) async {
    try {
      await box.deleteAll(keys);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  T get<T>(String id) {
    try {
      final data = box.get(id);
      if (data == null) {
        throw DailyNoteException.noRecords();
      }
      return data;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  List<T> getAll<T>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {
        throw DailyNoteException.noRecords();
      }
      return data.toList().cast<T>();
    } on Exception catch (_) {
      rethrow;
    }
  }
}
