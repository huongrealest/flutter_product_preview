import '../../resource/resource.dart';

class Validator {
  static final RegExp _emailRegex = RegExp(
    r'^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$',
  );
  static String? validateStringBlank(
    String? value,
    String msg, [
    bool autoToLowerCase = true,
  ]) =>
      (value == null || value.replaceAll(' ', '').isEmpty)
          ? "$msg không được để trống."
          : null;

  static bool _isValidEmail(String email) => _emailRegex.hasMatch(email);

  static String? inputEmailValidator(String? value) {
    if (value == null || value.isEmpty) return null;

    if (!_isValidEmail(value)) return 'Địa chỉ email không đúng định dạng.';

    return null;
  }

  static String? requiredInputEmailValidator(String? value) {
    if (value == null || value.isEmpty) return 'Vui lòng nhập địa chỉ email.';

    if (!_isValidEmail(value)) return 'Địa chỉ email không đúng định dạng.';

    return null;
  }

  static String? _isValidPassword(String password) {
    return password.length < AppConst.minPasswordLength
        ? "Mật khẩu phải tối thiểu ${AppConst.minPasswordLength} ký tự. Vui lòng nhập lại."
        : password.contains(' ')
            ? 'Mật khẩu không được chứa khoảng trắng.'
            : null;
  }

  static String? inputPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Vui lòng nhập mật khẩu.';
    }

    // if (RegExp(r'^$').hasMatch(value))
    //   return 'Bạn chưa nhập đúng đúng định dạng mật khẩu';

    return _isValidPassword(value);
  }
}
