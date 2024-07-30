import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class ToDo with _$ToDo{
  ToDo._();

  factory ToDo({
    @Default(false) bool completed,
    String? title,
    String? id,
}) = _ToDo;

  factory ToDo.empty() {
    const uuid = Uuid();

    return ToDo(
      id: uuid.v4(),
      title: '',
      completed: false,
    );
  }
}
