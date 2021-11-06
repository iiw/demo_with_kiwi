import 'package:demo_with_kiwi/domain/entities/user_entity.dart';
import 'package:demo_with_kiwi/domain/repositories/user_repository.dart';

class LoginUseCase {
  final UserRepository _repository;

  LoginUseCase(this._repository);

  UserEntity login() {
    const email = "op@op.com";
    const password = "password";
    return _repository.authorize(email, password);
  }
}
