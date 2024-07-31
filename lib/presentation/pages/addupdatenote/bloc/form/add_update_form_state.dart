part of 'add_update_form_bloc.dart';

@freezed
class AddUpdateFormState with _$AddUpdateFormState {

  const AddUpdateFormState._();
  factory AddUpdateFormState({
    String? title,
    String? description,
    Color? selectedColor,
    @Default([]) List<ToDo> todos,
  }) = _AddUpdateFormState;

  bool get showTitleHint => title.isNotEmptyString;
  bool get showDescriptionHint => description.isNotEmptyString;
  bool get hasTodo => todos.isNotEmpty;
}
