import 'package:flutter_test/flutter_test.dart';
import 'package:BSafe/auth/register.dart';

void main() {
  test('empty email returns error string', () {
    var result = EmailFieldValidator.validate('');
    expect(result, 'Email cannot be empty');
  });

  test('non-empty email returns null', () {
    var result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('empty password returns error string', () {
    var result = PasswordFieldValidator.validate('');
    expect(result, 'Password cannot be empty');
  });

  test('non-empty password too short returns error string', () {
    var result = PasswordFieldValidator.validate('short');
    expect(result, 'Enter a password that is at least 6 characters long');
  });

  test('non-empty correct length password returns null', () {
    var result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });

}
