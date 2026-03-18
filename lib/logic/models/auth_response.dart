class AuthResponse {
  final bool success;
  final String message;
  final String? token;
  final bool? isVerified;

  const AuthResponse({
    required this.success,
    required this.message,
    this.token,
    this.isVerified,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
    success: json['success'] == true || json['success'] == 'true',
    message: json['message'] ?? '',
    token: json['token'],
    isVerified: json['is_verified'],
  );
}
