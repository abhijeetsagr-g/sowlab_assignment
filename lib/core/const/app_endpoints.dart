abstract class AppEndpoints {
  static const String _baseUrl = "https://sowlab.com/assignment/user";

  // Login/Register
  static const String register = "$_baseUrl/register";
  static const String login = "$_baseUrl/login";

  // forgotten passworc
  static const String forgotPassword = "$_baseUrl/fogot-password";

  // reset password
  static const String verifyOtp = "$_baseUrl/verify-otp";
  static const String resetPassword = "$_baseUrl/reset-password";
}
