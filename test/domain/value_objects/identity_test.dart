import 'package:flutter_ddd_example/domain/value_objects/failure.dart';
import 'package:flutter_ddd_example/domain/value_objects/identity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;

void main() {
  group('Identity', () {
    test('should return Failure is id is less than 0!', () {
      final identity = Identity.create(-1).fold(
        (failure) => failure,
        (r) => null,
      );

      expect(identity, matcher.TypeMatcher<Failure>());
    });

    test('should return Identity if it is valid id', () {
      final int id = 1;

      final identity = Identity.create(id).fold(
        (_) => null,
        (identity) => identity,
      );

      expect(identity, matcher.TypeMatcher<Identity>());
      expect(identity!.id, id);
    });
  });
}
