
import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailed extends SignInState {
  final String errorMsg;
  const SignInFailed(this.errorMsg);
}
