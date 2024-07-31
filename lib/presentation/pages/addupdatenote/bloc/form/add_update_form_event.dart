
part of 'add_update_form_bloc.dart';

@freezed
class AddUpdateFormEvent with _$AddUpdateFormEvent {
  const factory AddUpdateFormEvent.initialize({
    String? title,
    String? description,
    Color? color,
    List<ToDo>? todos,
}) = _Initialize ;

  const factory AddUpdateFormEvent.titleChanged(String value) = _TitleChanged;
  const factory AddUpdateFormEvent.descriptionChanged(String value) = _DescriptionChanged;
  const factory AddUpdateFormEvent.colorChanged(Color value) = _ColorChanged;
  const factory AddUpdateFormEvent.addOrUpdateNote(String? id) = _AddOrUpdateNote;
  const factory AddUpdateFormEvent.addEmptyToDo() = _AddEmptyToDo;
  const factory AddUpdateFormEvent.deleteToDo(String id) = _DeleteToDo;
  const factory AddUpdateFormEvent.todoValueChanged({required String value,required String id}) = _TodoValueChanged;

}