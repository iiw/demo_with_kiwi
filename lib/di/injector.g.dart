// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configureFactories() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<UserRepository>(
          (c) => UserRepositoryImpl(c<HttpClient>()))
      ..registerFactory((c) => LoginUseCase(c<UserRepository>()));
  }
}
