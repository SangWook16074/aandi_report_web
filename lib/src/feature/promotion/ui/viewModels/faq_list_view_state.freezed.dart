// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqListViewState {
  List<FaqItem> get items;
  FaqListFilter get filter;

  /// Create a copy of FaqListViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaqListViewStateCopyWith<FaqListViewState> get copyWith =>
      _$FaqListViewStateCopyWithImpl<FaqListViewState>(
          this as FaqListViewState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaqListViewState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(items), filter);

  @override
  String toString() {
    return 'FaqListViewState(items: $items, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $FaqListViewStateCopyWith<$Res> {
  factory $FaqListViewStateCopyWith(
          FaqListViewState value, $Res Function(FaqListViewState) _then) =
      _$FaqListViewStateCopyWithImpl;
  @useResult
  $Res call({List<FaqItem> items, FaqListFilter filter});
}

/// @nodoc
class _$FaqListViewStateCopyWithImpl<$Res>
    implements $FaqListViewStateCopyWith<$Res> {
  _$FaqListViewStateCopyWithImpl(this._self, this._then);

  final FaqListViewState _self;
  final $Res Function(FaqListViewState) _then;

  /// Create a copy of FaqListViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? filter = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FaqItem>,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FaqListFilter,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaqListViewState].
extension FaqListViewStatePatterns on FaqListViewState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FaqListViewState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FaqListViewState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FaqListViewState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<FaqItem> items, FaqListFilter filter)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState() when $default != null:
        return $default(_that.items, _that.filter);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<FaqItem> items, FaqListFilter filter) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState():
        return $default(_that.items, _that.filter);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<FaqItem> items, FaqListFilter filter)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqListViewState() when $default != null:
        return $default(_that.items, _that.filter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FaqListViewState implements FaqListViewState {
  const _FaqListViewState(
      {final List<FaqItem> items = const [], this.filter = FaqListFilter.all})
      : _items = items;

  final List<FaqItem> _items;
  @override
  @JsonKey()
  List<FaqItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final FaqListFilter filter;

  /// Create a copy of FaqListViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaqListViewStateCopyWith<_FaqListViewState> get copyWith =>
      __$FaqListViewStateCopyWithImpl<_FaqListViewState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaqListViewState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), filter);

  @override
  String toString() {
    return 'FaqListViewState(items: $items, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$FaqListViewStateCopyWith<$Res>
    implements $FaqListViewStateCopyWith<$Res> {
  factory _$FaqListViewStateCopyWith(
          _FaqListViewState value, $Res Function(_FaqListViewState) _then) =
      __$FaqListViewStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<FaqItem> items, FaqListFilter filter});
}

/// @nodoc
class __$FaqListViewStateCopyWithImpl<$Res>
    implements _$FaqListViewStateCopyWith<$Res> {
  __$FaqListViewStateCopyWithImpl(this._self, this._then);

  final _FaqListViewState _self;
  final $Res Function(_FaqListViewState) _then;

  /// Create a copy of FaqListViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? filter = null,
  }) {
    return _then(_FaqListViewState(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FaqItem>,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FaqListFilter,
    ));
  }
}

// dart format on
