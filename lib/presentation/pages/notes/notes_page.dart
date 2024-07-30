import 'package:auto_route/annotations.dart';
import 'package:daily_note/common/extension/build_context.dart';
import 'package:daily_note/common/strings_constants.dart';
import 'package:daily_note/di/di.dart';
import 'package:daily_note/presentation/pages/notes/bloc/note_bloc.dart';
import 'package:daily_note/presentation/pages/notes/widget/note_card.dart';
import 'package:daily_note/presentation/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../domain/database/database.dart';
import '../../../domain/model/note.dart';
import '../../theme/spacing.dart';

@RoutePage()
class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DailyNoteAppBar(
        systemUiOverlayStyle: SystemUiOverlayStyle.light,
        autoImplementLeading: false,
        title: StringsConstants.homeAppBarTitle,
        actions: [],
      ),
      body: ValueListenableBuilder(
        valueListenable: getIt<Database>().box.listenable(),
        builder: (context, _, child) {
          context.read<NoteBloc>().add(const NoteEvent.getAllNotes());
          return child!;
        },
        child: BlocBuilder<NoteBloc, NoteState>(
          builder: (_, state) {
            return state.maybeMap(
                orElse: () => const ErrorMessage(message: 'Loading..'),
              error: (error) => ErrorMessage(message: error.message ?? ''),
              loaded: (data) => _BuildNotesList(notes: data.notes),
            );
          },
        ),
      ),
    );
  }
}

class _BuildNotesList extends StatelessWidget {
  const _BuildNotesList({super.key, required this.notes});

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacings.xl,
          vertical: AppSpacings.xl,
        ),
        crossAxisCount: _getCrossAxisCount(context),
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index){
          final noteId = notes[index].id!;
          return NoteCard(
              note:notes[index],
          );
        },
      mainAxisSpacing: AppSpacings.l,
      crossAxisSpacing: AppSpacings.l,
    );
  }

  int _getCrossAxisCount(BuildContext context) {
    if (context.isDesktop) {
      return 4;
    } else if (context.isTablet) {
      return 3;
    }
    return 2;
  }
}


