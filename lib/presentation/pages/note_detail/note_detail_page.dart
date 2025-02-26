
import 'package:auto_route/auto_route.dart';
import 'package:daily_note/common/extension/random.dart';
import 'package:daily_note/domain/model/todo.dart';
import 'package:daily_note/presentation/pages/note_detail/bloc/note_detail_bloc.dart';
import 'package:daily_note/presentation/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../common/constants.dart';
import '../../../domain/model/note.dart';
import '../../routes/app_router.gr.dart';
import '../../theme/spacing.dart';
import '../../theme/typography.dart';
import 'bloc/action/note_action_bloc.dart';

@RoutePage()
class NoteDetailPage extends StatefulWidget {
  const NoteDetailPage({super.key, required this.noteId});

  final String noteId;

  @override
  State<NoteDetailPage> createState() => _NoteDetailPageState();
}

class _NoteDetailPageState extends State<NoteDetailPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    BlocProvider.of<NoteDetailBloc>(context).add(NoteDetailEvent.showNoteDetail(widget.noteId));

  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteDetailBloc, NoteDetailState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.whenOrNull(
            loaded: (note) => note.color ?? colors.randomElement,
          ),
          appBar: DailyNoteAppBar(
            actions: state.whenOrNull(
              loaded: (note) => [
                AppButton(
                  child: const Icon(FeatherIcons.edit),
                  onPressed: () {
                    context.router.push(AddUpdateNoteRoute(note: note));
                  },
                ),
                AppButton(
                  child: const Icon(FeatherIcons.trash2),
                  onPressed: () {
                    context.read<NoteActionBloc>().add(NoteActionEvent.deleteNote(note.id!));
                  },
                ),
              ],
            ),
          ),
          body: state.maybeMap(
            error: (error) => ErrorMessage(message: error.message ?? ''),
            loaded: (data) => _LoadedView(note: data.note),
            orElse: () => const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}


class _LoadedView extends StatelessWidget {
  const _LoadedView({required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacings.xl,
        vertical: AppSpacings.xl,
      ),
      children: [
        //* Show Note Title
        SelectableText(
          note.title ?? '',
          style: AppTypography.headline3,
        ),
        const SizedBox(height: AppSpacings.l),

        //* Show Note Update/Add time
        SelectableText(
          note.dateWithTime,
          style: AppTypography.description.copyWith(color: Colors.black87),
        ),
        const SizedBox(height: AppSpacings.xxl),

        //* Show todo's list if any
        if (note.hasTodo) ...{
          _BuildTodoList(todoList: note.todos),
          const SizedBox(height: AppSpacings.xxl),
        },

        //* Note Description
        SelectableText(
          note.description ?? '',
          style: AppTypography.headline6,
        ),
      ],
    );
  }
}

class _BuildTodoList extends StatelessWidget {
  const _BuildTodoList({required this.todoList});
  final List<ToDo> todoList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "TODO's",
          style: AppTypography.headline6.copyWith(decoration: TextDecoration.underline),
        ),
        ListView.builder(
          key: const PageStorageKey('note-todos'),
          shrinkWrap: true,
          itemCount: todoList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final ToDo todo = todoList[index];

            return CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              value: todo.completed,
              contentPadding: EdgeInsets.zero,
              title: Text(
                todo.title ?? '',
                style: AppTypography.title.copyWith(
                  decoration: todo.completed ? TextDecoration.lineThrough : null,
                ),
              ),
              onChanged: (bool? value) {
                context.read<NoteDetailBloc>().add(NoteDetailEvent.toggleToDoCheckBox(todo.id!));
              },
            );
          },
        ),
      ],
    );
  }
}
