// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUiState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginUiState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiState()';
  }
}

/// @nodoc
class $LoginUiStateCopyWith<$Res> {
  $LoginUiStateCopyWith(LoginUiState _, $Res Function(LoginUiState) __);
}

/// Adds pattern-matching-related methods to [LoginUiState].
extension LoginUiStatePatterns on LoginUiState {
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
    TResult Function(Idle value)? idle,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Idle() when idle != null:
        return idle(_that);
      case Loading() when loading != null:
        return loading(_that);
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
    required TResult Function(Idle value) idle,
    required TResult Function(Loading value) loading,
  }) {
    final _that = this;
    switch (_that) {
      case Idle():
        return idle(_that);
      case Loading():
        return loading(_that);
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
    TResult? Function(Idle value)? idle,
    TResult? Function(Loading value)? loading,
  }) {
    final _that = this;
    switch (_that) {
      case Idle() when idle != null:
        return idle(_that);
      case Loading() when loading != null:
        return loading(_that);
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
    TResult Function(String userId, String password, String errorMsg)? idle,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Idle() when idle != null:
        return idle(_that.userId, _that.password, _that.errorMsg);
      case Loading() when loading != null:
        return loading();
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
    required TResult Function(String userId, String password, String errorMsg)
        idle,
    required TResult Function() loading,
  }) {
    final _that = this;
    switch (_that) {
      case Idle():
        return idle(_that.userId, _that.password, _that.errorMsg);
      case Loading():
        return loading();
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
    TResult? Function(String userId, String password, String errorMsg)? idle,
    TResult? Function()? loading,
  }) {
    final _that = this;
    switch (_that) {
      case Idle() when idle != null:
        return idle(_that.userId, _that.password, _that.errorMsg);
      case Loading() when loading != null:
        return loading();
      case _:
        return null;
    }
  }
}

/// @nodoc

class Idle implements LoginUiState {
  const Idle({this.userId = "", this.password = "", this.errorMsg = ""});

  @JsonKey()
  final String userId;
  @JsonKey()
  final String password;
  @JsonKey()
  final String errorMsg;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IdleCopyWith<Idle> get copyWith =>
      _$IdleCopyWithImpl<Idle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Idle &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, password, errorMsg);

  @override
  String toString() {
    return 'LoginUiState.idle(userId: $userId, password: $password, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class $IdleCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) _then) =
      _$IdleCopyWithImpl;
  @useResult
  $Res call({String userId, String password, String errorMsg});
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(this._self, this._then);

  final Idle _self;
  final $Res Function(Idle) _then;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? password = null,
    Object? errorMsg = null,
  }) {
    return _then(Idle(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Loading implements LoginUiState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiState.loading()';
  }
}

// dart format on
