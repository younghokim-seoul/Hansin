// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_room_calendar_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowRoomCalendarUiState {
  bool get isInitialize => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<CalendarEnableSelectEntity> get items =>
      throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowRoomCalendarUiStateCopyWith<ShowRoomCalendarUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowRoomCalendarUiStateCopyWith<$Res> {
  factory $ShowRoomCalendarUiStateCopyWith(ShowRoomCalendarUiState value,
          $Res Function(ShowRoomCalendarUiState) then) =
      _$ShowRoomCalendarUiStateCopyWithImpl<$Res, ShowRoomCalendarUiState>;
  @useResult
  $Res call(
      {bool isInitialize,
      bool isLoading,
      List<CalendarEnableSelectEntity> items,
      bool error});
}

/// @nodoc
class _$ShowRoomCalendarUiStateCopyWithImpl<$Res,
        $Val extends ShowRoomCalendarUiState>
    implements $ShowRoomCalendarUiStateCopyWith<$Res> {
  _$ShowRoomCalendarUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialize = null,
    Object? isLoading = null,
    Object? items = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isInitialize: null == isInitialize
          ? _value.isInitialize
          : isInitialize // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CalendarEnableSelectEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowRoomCalendarUiStateImplCopyWith<$Res>
    implements $ShowRoomCalendarUiStateCopyWith<$Res> {
  factory _$$ShowRoomCalendarUiStateImplCopyWith(
          _$ShowRoomCalendarUiStateImpl value,
          $Res Function(_$ShowRoomCalendarUiStateImpl) then) =
      __$$ShowRoomCalendarUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitialize,
      bool isLoading,
      List<CalendarEnableSelectEntity> items,
      bool error});
}

/// @nodoc
class __$$ShowRoomCalendarUiStateImplCopyWithImpl<$Res>
    extends _$ShowRoomCalendarUiStateCopyWithImpl<$Res,
        _$ShowRoomCalendarUiStateImpl>
    implements _$$ShowRoomCalendarUiStateImplCopyWith<$Res> {
  __$$ShowRoomCalendarUiStateImplCopyWithImpl(
      _$ShowRoomCalendarUiStateImpl _value,
      $Res Function(_$ShowRoomCalendarUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialize = null,
    Object? isLoading = null,
    Object? items = null,
    Object? error = null,
  }) {
    return _then(_$ShowRoomCalendarUiStateImpl(
      isInitialize: null == isInitialize
          ? _value.isInitialize
          : isInitialize // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CalendarEnableSelectEntity>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowRoomCalendarUiStateImpl implements _ShowRoomCalendarUiState {
  _$ShowRoomCalendarUiStateImpl(
      {required this.isInitialize,
      required this.isLoading,
      required final List<CalendarEnableSelectEntity> items,
      required this.error})
      : _items = items;

  @override
  final bool isInitialize;
  @override
  final bool isLoading;
  final List<CalendarEnableSelectEntity> _items;
  @override
  List<CalendarEnableSelectEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool error;

  @override
  String toString() {
    return 'ShowRoomCalendarUiState(isInitialize: $isInitialize, isLoading: $isLoading, items: $items, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowRoomCalendarUiStateImpl &&
            (identical(other.isInitialize, isInitialize) ||
                other.isInitialize == isInitialize) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitialize, isLoading,
      const DeepCollectionEquality().hash(_items), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowRoomCalendarUiStateImplCopyWith<_$ShowRoomCalendarUiStateImpl>
      get copyWith => __$$ShowRoomCalendarUiStateImplCopyWithImpl<
          _$ShowRoomCalendarUiStateImpl>(this, _$identity);
}

abstract class _ShowRoomCalendarUiState implements ShowRoomCalendarUiState {
  factory _ShowRoomCalendarUiState(
      {required final bool isInitialize,
      required final bool isLoading,
      required final List<CalendarEnableSelectEntity> items,
      required final bool error}) = _$ShowRoomCalendarUiStateImpl;

  @override
  bool get isInitialize;
  @override
  bool get isLoading;
  @override
  List<CalendarEnableSelectEntity> get items;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$ShowRoomCalendarUiStateImplCopyWith<_$ShowRoomCalendarUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
