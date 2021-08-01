import 'package:dartz/dartz.dart';

import 'failure.dart';

class Password {
  final String value;

  Password._(this.value);

  static Either<Failure, Password> create(String value) {
    if (value.length < 6) {
      return Left(
        Failure('password length should be at least 6 symbols!'),
      );
    }

    return Right(Password._(value));
  }

  @override
  String toString() => 'Password($value)';
}
