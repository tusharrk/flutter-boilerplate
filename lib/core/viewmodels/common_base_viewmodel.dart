import 'package:flutter_boilerplate/app/app.locator.dart';
import 'package:flutter_boilerplate/services/storage_service.dart';
import 'package:stacked/stacked.dart';

class CommonBaseViewmodel extends BaseViewModel {
    final storage = locator<StorageService>();
    
}