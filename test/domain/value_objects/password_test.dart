import 'package:flutter_ddd_example/domain/value_objects/failure.dart';
import 'package:flutter_ddd_example/domain/value_objects/password.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('Password', () {
    test('should return Failure if password length is less than 6!', () {
      final password = Password.create('1234').fold(
        (failure) => failure,
        (r) => null,
      );

      expect(password, matcher.TypeMatcher<Failure>());
    });

    test('should return Password if it password is valid', () {
      final pass = '123456';

      final password = Password.create(pass).fold(
        (_) => null,
        (password) => password,
      );

      expect(password, matcher.TypeMatcher<Password>());
      expect(password!.value, pass);
    });
  });
}
