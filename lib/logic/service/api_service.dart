import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sowlab_assignment/core/const/app_endpoints.dart';
import 'package:sowlab_assignment/logic/models/auth_response.dart';
import 'package:sowlab_assignment/logic/models/forgotten_password_request.dart';
import 'package:sowlab_assignment/logic/models/login_request.dart';
import 'package:sowlab_assignment/logic/models/register_request.dart';
import 'package:sowlab_assignment/logic/models/reset_password_request.dart';
import 'package:sowlab_assignment/logic/models/verify_otp_request.dart';

class ApiService {
  final headers = {'Content-Type': 'application/json'};

  Future<AuthResponse> _post(String url, Map<String, dynamic> body) async {
    try {
      final result = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );
      return AuthResponse.fromJson(jsonDecode(result.body));
    } catch (e) {
      return AuthResponse(
        success: false,
        message: "Something went wrong, try again.",
      );
    }
  }

  Future<AuthResponse> login(LoginRequest r) =>
      _post(AppEndpoints.login, r.toJson());
  Future<AuthResponse> register(RegisterRequest r) =>
      _post(AppEndpoints.register, r.toJson());

  Future<AuthResponse> forgotPassword(ForgotPasswordRequest r) =>
      _post(AppEndpoints.forgotPassword, r.toJson());

  Future<AuthResponse> verifyOtp(VerifyOtpRequest r) =>
      _post(AppEndpoints.verifyOtp, r.toJson());

  Future<AuthResponse> resetPassword(ResetPasswordRequest r) =>
      _post(AppEndpoints.resetPassword, r.toJson());
}
