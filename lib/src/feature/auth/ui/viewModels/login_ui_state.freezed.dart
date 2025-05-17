// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginUiState {
  String get account => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginUiStateCopyWith<LoginUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUiStateCopyWith<$Res> {
  factory $LoginUiStateCopyWith(
          LoginUiState value, $Res Function(LoginUiState) then) =
      _$LoginUiStateCopyWithImpl<$Res, LoginUiState>;
  @useResult
  $Res call({String account, String password});
}

/// @nodoc
class _$LoginUiStateCopyWithImpl<$Res, $Val extends LoginUiState>
    implements $LoginUiStateCopyWith<$Res> {
  _$LoginUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUiStateImplCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory _$$LoginUiStateImplCopyWith(
          _$LoginUiStateImpl value, $Res Function(_$LoginUiStateImpl) then) =
      __$$LoginUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account, String password});
}

/// @nodoc
class __$$LoginUiStateImplCopyWithImpl<$Res>
    extends _$LoginUiStateCopyWithImpl<$Res, _$LoginUiStateImpl>
    implements _$$LoginUiStateImplCopyWith<$Res> {
  __$$LoginUiStateImplCopyWithImpl(
      _$LoginUiStateImpl _value, $Res Function(_$LoginUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_$LoginUiStateImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUiStateImpl extends _LoginUiState {
  const _$LoginUiStateImpl({this.account = "", this.password = ""}) : super._();

  @override
  @JsonKey()
  final String account;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'LoginUiState(account: $account, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUiStateImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, password);

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      __$$LoginUiStateImplCopyWithImpl<_$LoginUiStateImpl>(this, _$identity);
}

abstract class _LoginUiState extends LoginUiState {
  const factory _LoginUiState({final String account, final String password}) =
      _$LoginUiStateImpl;
  const _LoginUiState._() : super._();

  @override
  String get account;
  @override
  String get password;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
