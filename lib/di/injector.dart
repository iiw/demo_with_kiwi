import 'dart:io';

import 'package:demo_with_kiwi/cases/login_use_case.dart';
import 'package:demo_with_kiwi/data/http/http_client_builder.dart';
import 'package:demo_with_kiwi/data/user_repository_impl.dart';
import 'package:demo_with_kiwi/domain/repositories/user_repository.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  void configure() {
    _configureInstances();
    _configureFactories();
  }

  void _configureInstances() {
    final container = KiwiContainer();
    container.registerInstance<HttpClient>(HttpClientBuilder.build());
  }

  @Register.factory(UserRepository, from: UserRepositoryImpl)
  @Register.factory(LoginUseCase)
  void _configureFactories();
}

void setupDependencyInjection() {
  final injector = _$Injector();
  injector.configure();
}
