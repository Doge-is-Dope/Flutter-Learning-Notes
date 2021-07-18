import 'package:get_it/get_it.dart';

import 'models/auth.dart';
import 'models/auth_state.dart';
import 'models/base.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => BaseModel());
  locator.registerLazySingleton(() => AuthModel());
  locator.registerLazySingleton(() => AuthStateModel());
}
