import 'dart:ui';

import 'package:daily_note/common/constants.dart';
import 'package:daily_note/common/extension/string.dart';
import 'package:daily_note/data/dto/todo_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/model/note.dart';

part 'note_dto.g.dart';

@HiveType(typeId: 1)
class NoteDTO implements Comparable {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final int? colorValue;
  @HiveField(4)
  final String? dateTime;
  @HiveField(5)
  final List<ToDoDTO>? todoList;

  NoteDTO({
    this.id,
    this.title,
    this.description,
    this.colorValue,
    this.dateTime,
    this.todoList = const [],
  });

  factory NoteDTO.fromNote(Note note) {
    return NoteDTO(
      id: note.id,
      title: note.title.clipToMaxLength(maxTitleCharCount),
      description: note.description,
      dateTime: note.dateTime?.toIso8601String(),
      colorValue: note.color?.value,
      todoList: note.todos.map((todo) => ToDoDTO.fromDomain(todo)).toList(),
    );
  }

  Note toDomain() {
    return Note(
      id: id,
      title: title,
      description: description,
      dateTime: DateTime.tryParse(dateTime!),
      color: Color(colorValue!),
      todos: todoList?.map((todo) => todo.toDomain()).toList() ?? [],
    );
  }

  bool get validNote => title?.isNotEmpty == true;

  NoteDTO copyWith(
      {String? id,
      String? title,
      String? description,
      int? colorValue,
      String? dateTime,
      List<ToDoDTO>? todoList}) {
    return NoteDTO(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      colorValue: colorValue ?? this.colorValue,
      dateTime: dateTime ?? this.dateTime,
      todoList: todoList ?? this.todoList,
    );
  }

  @override
  int compareTo(other) {
    try {
      final isAfter =
          DateTime.parse(other.dateTime).isAfter(DateTime.parse(dateTime!));
      return isAfter ? 1 : -1;
    } on Exception catch (_) {
      return 1;
    }
  }
}
