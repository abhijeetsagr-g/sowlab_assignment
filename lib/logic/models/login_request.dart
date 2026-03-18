class LoginRequest {
  final String email;
  final String password;
  final String? role;
  final String? deviceToken;
  final String? type;
  final String? socialId;

  const LoginRequest({
    required this.email,
    required this.password,
    this.role,
    this.deviceToken,
    this.type,
    this.socialId,
  });

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    if (role != null) 'role': role,
    if (deviceToken != null) 'device_token': deviceToken,
    if (type != null) 'type': type,
    if (socialId != null) 'social_id': socialId,
  };
}
