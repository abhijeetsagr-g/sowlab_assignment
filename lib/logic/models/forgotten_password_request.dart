class ForgotPasswordRequest {
  final String mobile;

  const ForgotPasswordRequest(this.mobile);

  Map<String, dynamic> toJson() => {"mobile": mobile};
}
