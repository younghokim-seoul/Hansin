

sealed class PasswordResetState {}

class Loading extends PasswordResetState {}

class ResetSuccess extends PasswordResetState {}

class ResetError extends PasswordResetState {}
