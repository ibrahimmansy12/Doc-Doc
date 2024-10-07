// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors?>? docotrsList) searchSuccess,
    required TResult Function(ApiErrorModel errorHandler) searchFaliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult? Function(ApiErrorModel errorHandler)? searchFaliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult Function(ApiErrorModel errorHandler)? searchFaliure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(searchFaliure value) searchFaliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(searchFaliure value)? searchFaliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(searchFaliure value)? searchFaliure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors?>? docotrsList) searchSuccess,
    required TResult Function(ApiErrorModel errorHandler) searchFaliure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult? Function(ApiErrorModel errorHandler)? searchFaliure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult Function(ApiErrorModel errorHandler)? searchFaliure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(searchFaliure value) searchFaliure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(searchFaliure value)? searchFaliure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(searchFaliure value)? searchFaliure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors?>? docotrsList) searchSuccess,
    required TResult Function(ApiErrorModel errorHandler) searchFaliure,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult? Function(ApiErrorModel errorHandler)? searchFaliure,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult Function(ApiErrorModel errorHandler)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(searchFaliure value) searchFaliure,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(searchFaliure value)? searchFaliure,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(searchFaliure value)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors?>? docotrsList});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docotrsList = freezed,
  }) {
    return _then(_$SearchSuccessImpl(
      freezed == docotrsList
          ? _value._docotrsList
          : docotrsList // ignore: cast_nullable_to_non_nullable
              as List<Doctors?>?,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl implements SearchSuccess {
  const _$SearchSuccessImpl(final List<Doctors?>? docotrsList)
      : _docotrsList = docotrsList;

  final List<Doctors?>? _docotrsList;
  @override
  List<Doctors?>? get docotrsList {
    final value = _docotrsList;
    if (value == null) return null;
    if (_docotrsList is EqualUnmodifiableListView) return _docotrsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchState.searchSuccess(docotrsList: $docotrsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._docotrsList, _docotrsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_docotrsList));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors?>? docotrsList) searchSuccess,
    required TResult Function(ApiErrorModel errorHandler) searchFaliure,
  }) {
    return searchSuccess(docotrsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult? Function(ApiErrorModel errorHandler)? searchFaliure,
  }) {
    return searchSuccess?.call(docotrsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult Function(ApiErrorModel errorHandler)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(docotrsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(searchFaliure value) searchFaliure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(searchFaliure value)? searchFaliure,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(searchFaliure value)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess(final List<Doctors?>? docotrsList) =
      _$SearchSuccessImpl;

  List<Doctors?>? get docotrsList;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$searchFaliureImplCopyWith<$Res> {
  factory _$$searchFaliureImplCopyWith(
          _$searchFaliureImpl value, $Res Function(_$searchFaliureImpl) then) =
      __$$searchFaliureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel errorHandler});
}

/// @nodoc
class __$$searchFaliureImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$searchFaliureImpl>
    implements _$$searchFaliureImplCopyWith<$Res> {
  __$$searchFaliureImplCopyWithImpl(
      _$searchFaliureImpl _value, $Res Function(_$searchFaliureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$searchFaliureImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$searchFaliureImpl implements searchFaliure {
  const _$searchFaliureImpl(this.errorHandler);

  @override
  final ApiErrorModel errorHandler;

  @override
  String toString() {
    return 'SearchState.searchFaliure(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchFaliureImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$searchFaliureImplCopyWith<_$searchFaliureImpl> get copyWith =>
      __$$searchFaliureImplCopyWithImpl<_$searchFaliureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(List<Doctors?>? docotrsList) searchSuccess,
    required TResult Function(ApiErrorModel errorHandler) searchFaliure,
  }) {
    return searchFaliure(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult? Function(ApiErrorModel errorHandler)? searchFaliure,
  }) {
    return searchFaliure?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(List<Doctors?>? docotrsList)? searchSuccess,
    TResult Function(ApiErrorModel errorHandler)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchFaliure != null) {
      return searchFaliure(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(searchFaliure value) searchFaliure,
  }) {
    return searchFaliure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(searchFaliure value)? searchFaliure,
  }) {
    return searchFaliure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(searchFaliure value)? searchFaliure,
    required TResult orElse(),
  }) {
    if (searchFaliure != null) {
      return searchFaliure(this);
    }
    return orElse();
  }
}

abstract class searchFaliure implements SearchState {
  const factory searchFaliure(final ApiErrorModel errorHandler) =
      _$searchFaliureImpl;

  ApiErrorModel get errorHandler;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$searchFaliureImplCopyWith<_$searchFaliureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
