import '../entities/user.dart';
import '../value_objects/identity.dart';
import '../value_objects/password.dart';

abstract class IUserRepository {
  Future<void> login(final Identity identity, final Password password);

  Future<void> register(final User user);
}
