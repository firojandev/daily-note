
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/note.dart';
import '../../../../domain/usecase/use_case.dart';

part 'add_update_bloc.freezed.dart';
part 'add_update_event.dart';
part 'add_update_state.dart';

@injectable
class AddUpdateBloc extends Bloc<AddUpdateEvent,AddUpdateState> {
  final AddNoteUseCase _addNoteUseCase;
  final UpdateNoteUseCase _updateNoteUseCase;

  AddUpdateBloc(super.initialState, this._addNoteUseCase, this._updateNoteUseCase);

}