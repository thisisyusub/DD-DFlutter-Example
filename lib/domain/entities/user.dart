import '../value_objects/identity.dart';
import '../value_objects/password.dart';

class User {
  final Identity id;
  final Password password;

  User({
    required this.id,
    required this.password,
  });

  @override
  String toString() => 'User($id, $password)';
}
