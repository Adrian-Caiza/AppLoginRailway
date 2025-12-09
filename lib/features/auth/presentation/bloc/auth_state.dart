import 'package:equatable/equatable.dart';
import '../../domain/entities/user_entity.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  final String? message;
  const AuthLoading({this.message});
  @override
  List<Object?> get props => [message];
}

class AuthAuthenticated extends AuthState {
  final UserEntity user;
  const AuthAuthenticated({required this.user});
  @override
  List<Object?> get props => [user];
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

class AuthError extends AuthState {
  final String message;
  const AuthError({required this.message});
  @override
  List<Object?> get props => [message];
}

class AuthPasswordResetSent extends AuthState {
  final String email;
  const AuthPasswordResetSent({required this.email});
  @override
  List<Object?> get props => [email];
}

class AuthSignUpSuccess extends AuthState {
  final String email;
  final bool requiresEmailConfirmation;

  const AuthSignUpSuccess({
    required this.email,
    this.requiresEmailConfirmation = true,
  });

  @override
  List<Object?> get props => [email, requiresEmailConfirmation];
}
