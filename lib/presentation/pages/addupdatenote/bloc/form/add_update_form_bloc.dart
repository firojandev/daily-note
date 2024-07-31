import 'dart:ui';
import 'package:daily_note/domain/model/note.dart';
import 'package:daily_note/presentation/pages/addupdatenote/bloc/add_update_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../domain/model/todo.dart';
import 'package:daily_note/common/extension/string.dart';

part 'add_update_form_bloc.freezed.dart';

part 'add_update_form_event.dart';

part 'add_update_form_state.dart';

@injectable
class AddUpdateFormBloc extends Bloc<AddUpdateFormEvent, AddUpdateFormState> {
  final AddUpdateBloc _addUpdateBloc;

  //Initialize the form with initial data
  AddUpdateFormBloc(this._addUpdateBloc) : super(AddUpdateFormState()) {
    on<_Initialize>((event, emit) {
      emit(AddUpdateFormState(
        title: event.title,
        description: event.description,
        selectedColor: event.color,
        todos: event.todos ?? [],
      ));
    });

    //Update field with current data
    on<AddUpdateFormEvent>((event, emit) {
      if (event is _TitleChanged) {
        emit(state.copyWith(title: event.value));
      }

      if (event is _DescriptionChanged) {
        emit(state.copyWith(description: event.value));
      }

      if (event is _ColorChanged) {
        emit(state.copyWith(selectedColor: event.value));
      }
    });

    //add or update note to the local storage
    on<_AddOrUpdateNote>((event, emit) {
      if (event.id == null) {
        final note = Note(
          color: state.selectedColor,
          title: state.title,
          description: state.description,
          dateTime: DateTime.now(),
        );
        _addUpdateBloc.add(AddUpdateEvent.addNote(note));
      } else {
        final note = Note(
          id: event.id,
          color: state.selectedColor,
          title: state.title,
          description: state.description,
          dateTime: DateTime.now(),
        );
        _addUpdateBloc.add(AddUpdateEvent.updateNote(note, event.id!));
      }
    });

    //Add Todo item
    on<_AddEmptyToDo>((event, emit) {
      final todos = List<ToDo>.from(state.todos);
      todos.add(ToDo.empty());
      emit(state.copyWith(todos: todos));
    });

    //Delete the todo item
    on<_DeleteToDo>((event, emit) {
      final todos = List<ToDo>.from(state.todos);
      todos.removeWhere((todo) => todo.id == event.id);

      emit(state.copyWith(todos: todos));

    });

    //Update the todo item
    on<_TodoValueChanged>((event, emit) {
      final todos = List<ToDo>.from(state.todos);
      final updatedToDoList = todos.map((todo){
        if(todo.id == event.id){
          return todo.copyWith(title: event.value);
        }
        return todo;
      }).toList();

      emit(state.copyWith(todos: updatedToDoList));

    });
  }
}
