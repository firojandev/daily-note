
part of '../add_update_note_page.dart';


class _AddTodoTile extends StatelessWidget {
  const _AddTodoTile({required this.onAdd});

  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Row(
          children: [
            const Icon(
              FeatherIcons.plusCircle,
              size: 18,
              color: AppColors.title,
            ),
            const SizedBox(width: 12),
            Text(
              StringsConstants.todoTitle,
              style: AppTypography.headline6,
            ),
          ],
        ),
        onTap: onAdd,
      ),
    );
  }
}

//* Todo list tile
class _TodoFieldTile extends StatefulWidget {
  const _TodoFieldTile({
    this.value,
    required this.onChanged,
    required this.onRemoved,
  });

  final String? value;
  final Function(String value) onChanged;
  final VoidCallback onRemoved;

  @override
  State<_TodoFieldTile> createState() => _TodoFieldTileState();
}

class _TodoFieldTileState extends State<_TodoFieldTile> {
  late FocusNode focusNode;
  late TextEditingController todoController;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode()..requestFocus();
    todoController = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: TextField(
        focusNode: focusNode,
        controller: todoController,
        style: AppTypography.headline6,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: StringsConstants.todoPlaceholder,
          hintStyle: AppTypography.headline6.copyWith(
            color: AppColors.title.withOpacity(0.6),
          ),
          counterText: '',
        ),
        onChanged: widget.onChanged,
        maxLength: todoMaxCharCount,
        maxLines: 4,
        minLines: 1,
      ),
      trailing: IconButton(
        iconSize: 18,
        icon: const Icon(
          FeatherIcons.trash2,
          color: Colors.black87,
        ),
        onPressed: widget.onRemoved,
      ),
    );
  }
}

class _BuildTodoListField extends StatelessWidget {
  const _BuildTodoListField({required this.state});
  final AddUpdateFormState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: state.todos.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final ToDo todo = state.todos[index];

            return _TodoFieldTile(
              value: todo.title,
              onChanged: (value) {
                context.read<AddUpdateFormBloc>().add(
                  AddUpdateFormEvent.todoValueChanged(
                    value: value,
                    id: todo.id!,
                  ),
                );
              },
              onRemoved: () {
                context.read<AddUpdateFormBloc>().add(AddUpdateFormEvent.deleteToDo(todo.id!));
              },
            );
          },
        ),
        _AddTodoTile(
          onAdd: () {
            context.read<AddUpdateFormBloc>().add(const AddUpdateFormEvent.addEmptyToDo());
          },
        ),
      ],
    );
  }
}
