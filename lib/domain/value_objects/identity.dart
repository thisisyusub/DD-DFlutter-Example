import 'package:dartz/dartz.dart';

import 'failure.dart';

class Identity {
  final int id;

  const Identity._(this.id);

  static Either<Failure, Identity> create(int id) {
    if (id <= 0) {
      return Left(Failure('id cannot be lower than 0!'));
    }

    return Right(Identity._(id));
  }

  @override
  String toString() => 'Identity($id)';
}
