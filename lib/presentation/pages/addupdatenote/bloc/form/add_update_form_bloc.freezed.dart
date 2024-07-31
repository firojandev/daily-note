// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_update_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddUpdateFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateFormEventCopyWith<$Res> {
  factory $AddUpdateFormEventCopyWith(
          AddUpdateFormEvent value, $Res Function(AddUpdateFormEvent) then) =
      _$AddUpdateFormEventCopyWithImpl<$Res, AddUpdateFormEvent>;
}

/// @nodoc
class _$AddUpdateFormEventCopyWithImpl<$Res, $Val extends AddUpdateFormEvent>
    implements $AddUpdateFormEventCopyWith<$Res> {
  _$AddUpdateFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? title, String? description, Color? color, List<ToDo>? todos});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? todos = freezed,
  }) {
    return _then(_$InitializeImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>?,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(
      {this.title, this.description, this.color, final List<ToDo>? todos})
      : _todos = todos;

  @override
  final String? title;
  @override
  final String? description;
  @override
  final Color? color;
  final List<ToDo>? _todos;
  @override
  List<ToDo>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddUpdateFormEvent.initialize(title: $title, description: $description, color: $color, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, color,
      const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return initialize(title, description, color, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return initialize?.call(title, description, color, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(title, description, color, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AddUpdateFormEvent {
  const factory _Initialize(
      {final String? title,
      final String? description,
      final Color? color,
      final List<ToDo>? todos}) = _$InitializeImpl;

  String? get title;
  String? get description;
  Color? get color;
  List<ToDo>? get todos;
  @JsonKey(ignore: true)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.titleChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return titleChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return titleChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements AddUpdateFormEvent {
  const factory _TitleChanged(final String value) = _$TitleChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.descriptionChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return descriptionChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return descriptionChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements AddUpdateFormEvent {
  const factory _DescriptionChanged(final String value) =
      _$DescriptionChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorChangedImplCopyWith<$Res> {
  factory _$$ColorChangedImplCopyWith(
          _$ColorChangedImpl value, $Res Function(_$ColorChangedImpl) then) =
      __$$ColorChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color value});
}

/// @nodoc
class __$$ColorChangedImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$ColorChangedImpl>
    implements _$$ColorChangedImplCopyWith<$Res> {
  __$$ColorChangedImplCopyWithImpl(
      _$ColorChangedImpl _value, $Res Function(_$ColorChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ColorChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorChangedImpl implements _ColorChanged {
  const _$ColorChangedImpl(this.value);

  @override
  final Color value;

  @override
  String toString() {
    return 'AddUpdateFormEvent.colorChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorChangedImplCopyWith<_$ColorChangedImpl> get copyWith =>
      __$$ColorChangedImplCopyWithImpl<_$ColorChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return colorChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return colorChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements AddUpdateFormEvent {
  const factory _ColorChanged(final Color value) = _$ColorChangedImpl;

  Color get value;
  @JsonKey(ignore: true)
  _$$ColorChangedImplCopyWith<_$ColorChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrUpdateNoteImplCopyWith<$Res> {
  factory _$$AddOrUpdateNoteImplCopyWith(_$AddOrUpdateNoteImpl value,
          $Res Function(_$AddOrUpdateNoteImpl) then) =
      __$$AddOrUpdateNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$AddOrUpdateNoteImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$AddOrUpdateNoteImpl>
    implements _$$AddOrUpdateNoteImplCopyWith<$Res> {
  __$$AddOrUpdateNoteImplCopyWithImpl(
      _$AddOrUpdateNoteImpl _value, $Res Function(_$AddOrUpdateNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AddOrUpdateNoteImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddOrUpdateNoteImpl implements _AddOrUpdateNote {
  const _$AddOrUpdateNoteImpl(this.id);

  @override
  final String? id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.addOrUpdateNote(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrUpdateNoteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrUpdateNoteImplCopyWith<_$AddOrUpdateNoteImpl> get copyWith =>
      __$$AddOrUpdateNoteImplCopyWithImpl<_$AddOrUpdateNoteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return addOrUpdateNote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return addOrUpdateNote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addOrUpdateNote != null) {
      return addOrUpdateNote(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return addOrUpdateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return addOrUpdateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addOrUpdateNote != null) {
      return addOrUpdateNote(this);
    }
    return orElse();
  }
}

abstract class _AddOrUpdateNote implements AddUpdateFormEvent {
  const factory _AddOrUpdateNote(final String? id) = _$AddOrUpdateNoteImpl;

  String? get id;
  @JsonKey(ignore: true)
  _$$AddOrUpdateNoteImplCopyWith<_$AddOrUpdateNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEmptyToDoImplCopyWith<$Res> {
  factory _$$AddEmptyToDoImplCopyWith(
          _$AddEmptyToDoImpl value, $Res Function(_$AddEmptyToDoImpl) then) =
      __$$AddEmptyToDoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddEmptyToDoImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$AddEmptyToDoImpl>
    implements _$$AddEmptyToDoImplCopyWith<$Res> {
  __$$AddEmptyToDoImplCopyWithImpl(
      _$AddEmptyToDoImpl _value, $Res Function(_$AddEmptyToDoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddEmptyToDoImpl implements _AddEmptyToDo {
  const _$AddEmptyToDoImpl();

  @override
  String toString() {
    return 'AddUpdateFormEvent.addEmptyToDo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddEmptyToDoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return addEmptyToDo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return addEmptyToDo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addEmptyToDo != null) {
      return addEmptyToDo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return addEmptyToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return addEmptyToDo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (addEmptyToDo != null) {
      return addEmptyToDo(this);
    }
    return orElse();
  }
}

abstract class _AddEmptyToDo implements AddUpdateFormEvent {
  const factory _AddEmptyToDo() = _$AddEmptyToDoImpl;
}

/// @nodoc
abstract class _$$DeleteToDoImplCopyWith<$Res> {
  factory _$$DeleteToDoImplCopyWith(
          _$DeleteToDoImpl value, $Res Function(_$DeleteToDoImpl) then) =
      __$$DeleteToDoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteToDoImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$DeleteToDoImpl>
    implements _$$DeleteToDoImplCopyWith<$Res> {
  __$$DeleteToDoImplCopyWithImpl(
      _$DeleteToDoImpl _value, $Res Function(_$DeleteToDoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteToDoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteToDoImpl implements _DeleteToDo {
  const _$DeleteToDoImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.deleteToDo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteToDoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteToDoImplCopyWith<_$DeleteToDoImpl> get copyWith =>
      __$$DeleteToDoImplCopyWithImpl<_$DeleteToDoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return deleteToDo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return deleteToDo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (deleteToDo != null) {
      return deleteToDo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return deleteToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return deleteToDo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (deleteToDo != null) {
      return deleteToDo(this);
    }
    return orElse();
  }
}

abstract class _DeleteToDo implements AddUpdateFormEvent {
  const factory _DeleteToDo(final String id) = _$DeleteToDoImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteToDoImplCopyWith<_$DeleteToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoValueChangedImplCopyWith<$Res> {
  factory _$$TodoValueChangedImplCopyWith(_$TodoValueChangedImpl value,
          $Res Function(_$TodoValueChangedImpl) then) =
      __$$TodoValueChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, String id});
}

/// @nodoc
class __$$TodoValueChangedImplCopyWithImpl<$Res>
    extends _$AddUpdateFormEventCopyWithImpl<$Res, _$TodoValueChangedImpl>
    implements _$$TodoValueChangedImplCopyWith<$Res> {
  __$$TodoValueChangedImplCopyWithImpl(_$TodoValueChangedImpl _value,
      $Res Function(_$TodoValueChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_$TodoValueChangedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoValueChangedImpl implements _TodoValueChanged {
  const _$TodoValueChangedImpl({required this.value, required this.id});

  @override
  final String value;
  @override
  final String id;

  @override
  String toString() {
    return 'AddUpdateFormEvent.todoValueChanged(value: $value, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoValueChangedImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoValueChangedImplCopyWith<_$TodoValueChangedImpl> get copyWith =>
      __$$TodoValueChangedImplCopyWithImpl<_$TodoValueChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, Color? color, List<ToDo>? todos)
        initialize,
    required TResult Function(String value) titleChanged,
    required TResult Function(String value) descriptionChanged,
    required TResult Function(Color value) colorChanged,
    required TResult Function(String? id) addOrUpdateNote,
    required TResult Function() addEmptyToDo,
    required TResult Function(String id) deleteToDo,
    required TResult Function(String value, String id) todoValueChanged,
  }) {
    return todoValueChanged(value, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult? Function(String value)? titleChanged,
    TResult? Function(String value)? descriptionChanged,
    TResult? Function(Color value)? colorChanged,
    TResult? Function(String? id)? addOrUpdateNote,
    TResult? Function()? addEmptyToDo,
    TResult? Function(String id)? deleteToDo,
    TResult? Function(String value, String id)? todoValueChanged,
  }) {
    return todoValueChanged?.call(value, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, Color? color,
            List<ToDo>? todos)?
        initialize,
    TResult Function(String value)? titleChanged,
    TResult Function(String value)? descriptionChanged,
    TResult Function(Color value)? colorChanged,
    TResult Function(String? id)? addOrUpdateNote,
    TResult Function()? addEmptyToDo,
    TResult Function(String id)? deleteToDo,
    TResult Function(String value, String id)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (todoValueChanged != null) {
      return todoValueChanged(value, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_AddOrUpdateNote value) addOrUpdateNote,
    required TResult Function(_AddEmptyToDo value) addEmptyToDo,
    required TResult Function(_DeleteToDo value) deleteToDo,
    required TResult Function(_TodoValueChanged value) todoValueChanged,
  }) {
    return todoValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ColorChanged value)? colorChanged,
    TResult? Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult? Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult? Function(_DeleteToDo value)? deleteToDo,
    TResult? Function(_TodoValueChanged value)? todoValueChanged,
  }) {
    return todoValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_AddOrUpdateNote value)? addOrUpdateNote,
    TResult Function(_AddEmptyToDo value)? addEmptyToDo,
    TResult Function(_DeleteToDo value)? deleteToDo,
    TResult Function(_TodoValueChanged value)? todoValueChanged,
    required TResult orElse(),
  }) {
    if (todoValueChanged != null) {
      return todoValueChanged(this);
    }
    return orElse();
  }
}

abstract class _TodoValueChanged implements AddUpdateFormEvent {
  const factory _TodoValueChanged(
      {required final String value,
      required final String id}) = _$TodoValueChangedImpl;

  String get value;
  String get id;
  @JsonKey(ignore: true)
  _$$TodoValueChangedImplCopyWith<_$TodoValueChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUpdateFormState {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Color? get selectedColor => throw _privateConstructorUsedError;
  List<ToDo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdateFormStateCopyWith<AddUpdateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateFormStateCopyWith<$Res> {
  factory $AddUpdateFormStateCopyWith(
          AddUpdateFormState value, $Res Function(AddUpdateFormState) then) =
      _$AddUpdateFormStateCopyWithImpl<$Res, AddUpdateFormState>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      Color? selectedColor,
      List<ToDo> todos});
}

/// @nodoc
class _$AddUpdateFormStateCopyWithImpl<$Res, $Val extends AddUpdateFormState>
    implements $AddUpdateFormStateCopyWith<$Res> {
  _$AddUpdateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? selectedColor = freezed,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUpdateFormStateImplCopyWith<$Res>
    implements $AddUpdateFormStateCopyWith<$Res> {
  factory _$$AddUpdateFormStateImplCopyWith(_$AddUpdateFormStateImpl value,
          $Res Function(_$AddUpdateFormStateImpl) then) =
      __$$AddUpdateFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      Color? selectedColor,
      List<ToDo> todos});
}

/// @nodoc
class __$$AddUpdateFormStateImplCopyWithImpl<$Res>
    extends _$AddUpdateFormStateCopyWithImpl<$Res, _$AddUpdateFormStateImpl>
    implements _$$AddUpdateFormStateImplCopyWith<$Res> {
  __$$AddUpdateFormStateImplCopyWithImpl(_$AddUpdateFormStateImpl _value,
      $Res Function(_$AddUpdateFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? selectedColor = freezed,
    Object? todos = null,
  }) {
    return _then(_$AddUpdateFormStateImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
    ));
  }
}

/// @nodoc

class _$AddUpdateFormStateImpl extends _AddUpdateFormState {
  _$AddUpdateFormStateImpl(
      {this.title,
      this.description,
      this.selectedColor,
      final List<ToDo> todos = const []})
      : _todos = todos,
        super._();

  @override
  final String? title;
  @override
  final String? description;
  @override
  final Color? selectedColor;
  final List<ToDo> _todos;
  @override
  @JsonKey()
  List<ToDo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'AddUpdateFormState(title: $title, description: $description, selectedColor: $selectedColor, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUpdateFormStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      selectedColor, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUpdateFormStateImplCopyWith<_$AddUpdateFormStateImpl> get copyWith =>
      __$$AddUpdateFormStateImplCopyWithImpl<_$AddUpdateFormStateImpl>(
          this, _$identity);
}

abstract class _AddUpdateFormState extends AddUpdateFormState {
  factory _AddUpdateFormState(
      {final String? title,
      final String? description,
      final Color? selectedColor,
      final List<ToDo> todos}) = _$AddUpdateFormStateImpl;
  _AddUpdateFormState._() : super._();

  @override
  String? get title;
  @override
  String? get description;
  @override
  Color? get selectedColor;
  @override
  List<ToDo> get todos;
  @override
  @JsonKey(ignore: true)
  _$$AddUpdateFormStateImplCopyWith<_$AddUpdateFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
