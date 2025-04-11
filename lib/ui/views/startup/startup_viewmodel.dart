import 'package:flutter_boilerplate/core/viewmodels/common_base_viewmodel.dart';
import 'package:flutter_boilerplate/app/app.locator.dart';
import 'package:flutter_boilerplate/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends CommonBaseViewmodel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic
test();
    _navigationService.replaceWithHomeView();
  }

  void test(){
    storage.write('testKey', "test Value");
  }
}
