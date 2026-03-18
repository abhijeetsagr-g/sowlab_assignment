import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sowlab_assignment/logic/models/auth_response.dart';
import 'package:sowlab_assignment/logic/models/forgotten_password_request.dart';
import 'package:sowlab_assignment/logic/models/login_request.dart';
import 'package:sowlab_assignment/logic/models/register_request.dart';
import 'package:sowlab_assignment/logic/models/reset_password_request.dart';
import 'package:sowlab_assignment/logic/models/verify_otp_request.dart';
import 'package:sowlab_assignment/logic/viewmodel/providers.dart';

class LoginNotifier extends AsyncNotifier<AuthResponse?> {
  @override
  Future<AuthResponse?> build() async => null;

  Future<void> login(LoginRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(apiServiceProvider).login(request),
    );
  }
}

class RegisterNotifier extends AsyncNotifier<AuthResponse?> {
  @override
  Future<AuthResponse?> build() async => null;

  Future<void> register(RegisterRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(apiServiceProvider).register(request),
    );
  }
}

class ForgotPasswordNotifier extends AsyncNotifier<AuthResponse?> {
  @override
  Future<AuthResponse?> build() async => null;

  Future<void> forgotPassowrd(ForgotPasswordRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(apiServiceProvider).forgotPassword(request),
    );
  }
}

class VerifyOtpNotifier extends AsyncNotifier<AuthResponse?> {
  @override
  Future<AuthResponse?> build() async => null;

  Future<void> verifyOtp(VerifyOtpRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(apiServiceProvider).verifyOtp(request),
    );
  }
}

class ResetPasswordNotifier extends AsyncNotifier<AuthResponse?> {
  @override
  Future<AuthResponse?> build() async => null;

  Future<void> resetPassword(ResetPasswordRequest request) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(apiServiceProvider).resetPassword(request),
    );
  }
}
