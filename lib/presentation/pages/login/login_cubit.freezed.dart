// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginMethod loginType) authInProgress,
    required TResult Function() loggedInSuccessfully,
    required TResult Function() authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginMethod loginType)? authInProgress,
    TResult? Function()? loggedInSuccessfully,
    TResult? Function()? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginMethod loginType)? authInProgress,
    TResult Function()? loggedInSuccessfully,
    TResult Function()? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(LoggedInSuccessfully value) loggedInSuccessfully,
    required TResult Function(AuthError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthInProgress value)? authInProgress,
    TResult? Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult? Function(AuthError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function(LoginMethod loginType) authInProgress,
    required TResult Function() loggedInSuccessfully,
    required TResult Function() authError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginMethod loginType)? authInProgress,
    TResult? Function()? loggedInSuccessfully,
    TResult? Function()? authError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginMethod loginType)? authInProgress,
    TResult Function()? loggedInSuccessfully,
    TResult Function()? authError,
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
    required TResult Function(Initial value) initial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(LoggedInSuccessfully value) loggedInSuccessfully,
    required TResult Function(AuthError value) authError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthInProgress value)? authInProgress,
    TResult? Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult? Function(AuthError value)? authError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends LoginState {
  const factory Initial() = _$InitialImpl;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$AuthInProgressImplCopyWith<$Res> {
  factory _$$AuthInProgressImplCopyWith(_$AuthInProgressImpl value,
          $Res Function(_$AuthInProgressImpl) then) =
      __$$AuthInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginMethod loginType});
}

/// @nodoc
class __$$AuthInProgressImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AuthInProgressImpl>
    implements _$$AuthInProgressImplCopyWith<$Res> {
  __$$AuthInProgressImplCopyWithImpl(
      _$AuthInProgressImpl _value, $Res Function(_$AuthInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = null,
  }) {
    return _then(_$AuthInProgressImpl(
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginMethod,
    ));
  }
}

/// @nodoc

class _$AuthInProgressImpl extends AuthInProgress {
  const _$AuthInProgressImpl({required this.loginType}) : super._();

  @override
  final LoginMethod loginType;

  @override
  String toString() {
    return 'LoginState.authInProgress(loginType: $loginType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInProgressImpl &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInProgressImplCopyWith<_$AuthInProgressImpl> get copyWith =>
      __$$AuthInProgressImplCopyWithImpl<_$AuthInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginMethod loginType) authInProgress,
    required TResult Function() loggedInSuccessfully,
    required TResult Function() authError,
  }) {
    return authInProgress(loginType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginMethod loginType)? authInProgress,
    TResult? Function()? loggedInSuccessfully,
    TResult? Function()? authError,
  }) {
    return authInProgress?.call(loginType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginMethod loginType)? authInProgress,
    TResult Function()? loggedInSuccessfully,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(loginType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(LoggedInSuccessfully value) loggedInSuccessfully,
    required TResult Function(AuthError value) authError,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthInProgress value)? authInProgress,
    TResult? Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult? Function(AuthError value)? authError,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthInProgress extends LoginState {
  const factory AuthInProgress({required final LoginMethod loginType}) =
      _$AuthInProgressImpl;
  const AuthInProgress._() : super._();

  LoginMethod get loginType;
  @JsonKey(ignore: true)
  _$$AuthInProgressImplCopyWith<_$AuthInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInSuccessfullyImplCopyWith<$Res> {
  factory _$$LoggedInSuccessfullyImplCopyWith(_$LoggedInSuccessfullyImpl value,
          $Res Function(_$LoggedInSuccessfullyImpl) then) =
      __$$LoggedInSuccessfullyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInSuccessfullyImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedInSuccessfullyImpl>
    implements _$$LoggedInSuccessfullyImplCopyWith<$Res> {
  __$$LoggedInSuccessfullyImplCopyWithImpl(_$LoggedInSuccessfullyImpl _value,
      $Res Function(_$LoggedInSuccessfullyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInSuccessfullyImpl extends LoggedInSuccessfully {
  const _$LoggedInSuccessfullyImpl() : super._();

  @override
  String toString() {
    return 'LoginState.loggedInSuccessfully()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInSuccessfullyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginMethod loginType) authInProgress,
    required TResult Function() loggedInSuccessfully,
    required TResult Function() authError,
  }) {
    return loggedInSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginMethod loginType)? authInProgress,
    TResult? Function()? loggedInSuccessfully,
    TResult? Function()? authError,
  }) {
    return loggedInSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginMethod loginType)? authInProgress,
    TResult Function()? loggedInSuccessfully,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (loggedInSuccessfully != null) {
      return loggedInSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(LoggedInSuccessfully value) loggedInSuccessfully,
    required TResult Function(AuthError value) authError,
  }) {
    return loggedInSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthInProgress value)? authInProgress,
    TResult? Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult? Function(AuthError value)? authError,
  }) {
    return loggedInSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (loggedInSuccessfully != null) {
      return loggedInSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoggedInSuccessfully extends LoginState {
  const factory LoggedInSuccessfully() = _$LoggedInSuccessfullyImpl;
  const LoggedInSuccessfully._() : super._();
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthErrorImpl extends AuthError {
  const _$AuthErrorImpl() : super._();

  @override
  String toString() {
    return 'LoginState.authError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginMethod loginType) authInProgress,
    required TResult Function() loggedInSuccessfully,
    required TResult Function() authError,
  }) {
    return authError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginMethod loginType)? authInProgress,
    TResult? Function()? loggedInSuccessfully,
    TResult? Function()? authError,
  }) {
    return authError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginMethod loginType)? authInProgress,
    TResult Function()? loggedInSuccessfully,
    TResult Function()? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(LoggedInSuccessfully value) loggedInSuccessfully,
    required TResult Function(AuthError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthInProgress value)? authInProgress,
    TResult? Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult? Function(AuthError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(LoggedInSuccessfully value)? loggedInSuccessfully,
    TResult Function(AuthError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError extends LoginState {
  const factory AuthError() = _$AuthErrorImpl;
  const AuthError._() : super._();
}
