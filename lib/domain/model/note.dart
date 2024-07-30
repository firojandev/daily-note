import 'dart:ui';

import 'package:daily_note/domain/model/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
class Note with _$Note {
  Note._();

  factory Note({
    String? id,
    String? title,
    String? description,
    Color? color,
    DateTime? dateTime,
    @Default([]) List<ToDo> todos,
  }) = _Note;

  final DateFormat _formater = DateFormat('MMMM dd, yyyy');

  String get date => dateTime != null ? _formater.format(dateTime!) : '';

  final DateFormat _formatter1 = DateFormat('MMMM dd, yyyy  h:m a');

  String get dateWithTime =>
      dateTime != null ? _formatter1.format(dateTime!) : '';

  bool get hasTodo => todos.isNotEmpty;
}
