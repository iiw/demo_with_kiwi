import 'package:demo_with_kiwi/domain/entities/user_entity.dart';

abstract class UserRepository {
  UserEntity getUser();
  UserEntity authorize(String email, String password);
}
