import 'package:flutter_boilerplate/core/common_imports/common_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/service_imports.dart';

class CommonBaseViewmodel extends BaseViewModel {
  final storageService = locator<StorageService>();
  final environmentService = locator<EnvironmentService>();

  Environment get currentEnvironment => environmentService.currentEnvironment;
  //String get apiUrl => environmentService.apiUrl;

  // This would handle switching environments at runtime if needed
  // Note: With envied, full switching would require regenerating code

  // void toggleEnvironment() {
  //   environmentService.setEnvironment(environmentService.isDevelopment
  //       ? Environment.production
  //       : Environment.development);
  //   notifyListeners();
  // }
}
