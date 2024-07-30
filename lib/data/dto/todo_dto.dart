import 'package:daily_note/common/constants.dart';
import 'package:daily_note/common/extension/string.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/model/todo.dart';

part 'todo_dto.g.dart';

@HiveType(typeId: 0)
class ToDoDTO {
  @HiveField(0)
  final String? id;

  @HiveField(1)
  final String? title;

  @HiveField(2)
  final bool? completed;

  ToDoDTO({this.id, this.title, this.completed});


  factory ToDoDTO.fromDomain(ToDo todo){
    return ToDoDTO(
        completed: todo.completed,
        id: todo.id,
        title: todo.title.clipToMaxLength(todoMaxCharCount)
    );
  }

  ToDo toDomain() {
    return ToDo(
        id: id,
        title: title,
        completed: completed ?? false,
    );
  }

}
