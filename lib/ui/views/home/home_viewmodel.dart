import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/common_imports/common_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/service_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/ui_imports.dart';
import 'package:flutter_boilerplate/data/model/Person.dart';

class HomeViewModel extends CommonBaseViewmodel {
  final _userService = locator<UserService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;
  bool isDarkMode = false;

  void incrementCounter() {
    _counter++;
    // debugPrint("current environment---$currentEnvironment");
    // debugPrint("current api key---${environmentService.apiKey}");
    // debugPrint("current api url---${environmentService.apiUrl}");
    logger.d("current environment---$currentEnvironment");
    logger.e("error===============");
    logger.w("warning===============");
    logger.v("verbose===============");
    logger.i("info===============");
    logger.d("debug===============");
    logger.wtf("wtf===============");

    Person person = Person(mobileNo: "1234567890");
    var json = person.toJson(person);
    debugPrint("current person---$json");
    debugPrint("current person---${Person.fromJson(json).mobileNo}");
    //  final box = GetStorage();
    rebuildUi();
  }

  void changeDarkMode(bool value) {
    isDarkMode = value;
    rebuildUi();
  }

  void changeLocale(BuildContext context) async {
    var locale = context.locale.toString();
    debugPrint("current locale---$locale");
    var newLocale = context.locale;
    if (locale == 'en_US') {
      newLocale = Locales.de.locale;
    } else if (locale == 'de_DE') {
      newLocale = Locales.hi.locale;
    } else if (locale == 'hi_IN') {
      newLocale = Locales.en.locale;
    }
    debugPrint("new locale---${newLocale.toString()}");
    await AppLocalization.updateLanguage(context, newLocale);
    rebuildUi();
  }

  void showDialog() {
    registerUser();
    return;
    dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void registerUser() {
    _userService.register(Person(mobileNo: "")).then((response) {
      response.when(success: (data, statusCode, isSuccess) {
        if (data != null) {
          dialogService.showDialog(
            title: 'Registration Successful',
            description:
                'Welcome ${_userService.currentUser?.userId} - ${_userService.isLoggedIn}',
          );
        } else {
          dialogService.showDialog(
            title: 'Registration Failed',
            description: 'Please try again later.',
          );
        }
      }, error: (errorMessage, statusCode, isSuccess) {
        dialogService.showDialog(
          title: 'Registration Failed',
          description: 'Please try again later. $errorMessage',
        );
      });
    });
  }
}
