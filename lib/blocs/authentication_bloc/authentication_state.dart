part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.myUser});

  final AuthenticationStatus status;
  final MyUser? myUser;

  const AuthenticationState.unknown() : this._();
  const AuthenticationState.authenticated(MyUser myUser)
      : this._(myUser: myUser, status: AuthenticationStatus.authenticated);
  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, myUser];
}
