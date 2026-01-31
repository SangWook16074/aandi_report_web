// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list_view_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqListViewEvent {
  FaqListFilter get filter;

  /// Create a copy of FaqListViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaqListViewEventCopyWith<FaqListViewEvent> get copyWith =>
      _$FaqListViewEventCopyWithImpl<FaqListViewEvent>(
          this as FaqListViewEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaqListViewEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @override
  String toString() {
    return 'FaqListViewEvent(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $FaqListViewEventCopyWith<$Res> {
  factory $FaqListViewEventCopyWith(
          FaqListViewEvent value, $Res Function(FaqListViewEvent) _then) =
      _$FaqListViewEventCopyWithImpl;
  @useResult
  $Res call({FaqListFilter filter});
}

/// @nodoc
class _$FaqListViewEventCopyWithImpl<$Res>
    implements $FaqListViewEventCopyWith<$Res> {
  _$FaqListViewEventCopyWithImpl(this._self, this._then);

  final FaqListViewEvent _self;
  final $Res Function(FaqListViewEvent) _then;

  /// Create a copy of FaqListViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_self.copyWith(
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FaqListFilter,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaqListViewEvent].
extension FaqListViewEventPatterns on FaqListViewEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqListViewFilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged() when filterChanged != null:
        return filterChanged(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(FaqListViewFilterChanged value) filterChanged,
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged():
        return filterChanged(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqListViewFilterChanged value)? filterChanged,
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged() when filterChanged != null:
        return filterChanged(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FaqListFilter filter)? filterChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged() when filterChanged != null:
        return filterChanged(_that.filter);
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
  TResult when<TResult extends Object?>({
    required TResult Function(FaqListFilter filter) filterChanged,
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged():
        return filterChanged(_that.filter);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FaqListFilter filter)? filterChanged,
  }) {
    final _that = this;
    switch (_that) {
      case FaqListViewFilterChanged() when filterChanged != null:
        return filterChanged(_that.filter);
      case _:
        return null;
    }
  }
}

/// @nodoc

class FaqListViewFilterChanged implements FaqListViewEvent {
  const FaqListViewFilterChanged({required this.filter});

  @override
  final FaqListFilter filter;

  /// Create a copy of FaqListViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaqListViewFilterChangedCopyWith<FaqListViewFilterChanged> get copyWith =>
      _$FaqListViewFilterChangedCopyWithImpl<FaqListViewFilterChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaqListViewFilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @override
  String toString() {
    return 'FaqListViewEvent.filterChanged(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $FaqListViewFilterChangedCopyWith<$Res>
    implements $FaqListViewEventCopyWith<$Res> {
  factory $FaqListViewFilterChangedCopyWith(FaqListViewFilterChanged value,
          $Res Function(FaqListViewFilterChanged) _then) =
      _$FaqListViewFilterChangedCopyWithImpl;
  @override
  @useResult
  $Res call({FaqListFilter filter});
}

/// @nodoc
class _$FaqListViewFilterChangedCopyWithImpl<$Res>
    implements $FaqListViewFilterChangedCopyWith<$Res> {
  _$FaqListViewFilterChangedCopyWithImpl(this._self, this._then);

  final FaqListViewFilterChanged _self;
  final $Res Function(FaqListViewFilterChanged) _then;

  /// Create a copy of FaqListViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filter = null,
  }) {
    return _then(FaqListViewFilterChanged(
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FaqListFilter,
    ));
  }
}

// dart format on
