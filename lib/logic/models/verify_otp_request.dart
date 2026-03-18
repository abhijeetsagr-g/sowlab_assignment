class VerifyOtpRequest {
  final String otp;

  const VerifyOtpRequest(this.otp);

  Map<String, dynamic> toJson() => {"otp": otp};
}
