import 'dart:io';

import 'package:demo_with_kiwi/domain/entities/user_entity.dart';
import 'package:demo_with_kiwi/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final HttpClient _httpClient;

  UserRepositoryImpl(this._httpClient);

  @override
  UserEntity getUser() {
    return UserEntity("hello@world.com");
  }

  @override
  UserEntity authorize(String email, String password) {
    _httpClient;
    return UserEntity("hello@world.com");
  }
}
