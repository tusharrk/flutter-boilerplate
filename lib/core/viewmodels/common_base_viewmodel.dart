import 'package:flutter_boilerplate/core/common_imports/common_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/service_imports.dart';

class CommonBaseViewmodel extends BaseViewModel {
  final storageService = locator<StorageService>();
}
