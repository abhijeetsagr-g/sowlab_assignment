import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sowlab_assignment/logic/models/auth_response.dart';
import 'package:sowlab_assignment/logic/service/api_service.dart';
import 'package:sowlab_assignment/logic/viewmodel/notifers.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

final loginProvider = AsyncNotifierProvider<LoginNotifier, AuthResponse?>(
  LoginNotifier.new,
);

final registerProvider = AsyncNotifierProvider<RegisterNotifier, AuthResponse?>(
  RegisterNotifier.new,
);

final forgotPasswordProvider =
    AsyncNotifierProvider<ForgotPasswordNotifier, AuthResponse?>(
      ForgotPasswordNotifier.new,
    );

final verifyOtpProvider =
    AsyncNotifierProvider<VerifyOtpNotifier, AuthResponse?>(
      VerifyOtpNotifier.new,
    );

final resetPasswordProvider =
    AsyncNotifierProvider<ResetPasswordNotifier, AuthResponse?>(
      ResetPasswordNotifier.new,
    );
