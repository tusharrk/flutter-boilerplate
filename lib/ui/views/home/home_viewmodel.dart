import 'package:flutter_boilerplate/core/common_imports/common_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/service_imports.dart';
import 'package:flutter_boilerplate/core/common_imports/ui_imports.dart';
import 'package:flutter_boilerplate/data/model/Person.dart';

class HomeViewModel extends CommonBaseViewmodel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    // debugPrint("current environment---$currentEnvironment");
    // debugPrint("current api key---${environmentService.apiKey}");
    // debugPrint("current api url---${environmentService.apiUrl}");

    Person person = Person(
      name: 'John Doe',
      dateOfRelease: DateTime.now(),
    );
    var json = person.toJson(person);
    debugPrint("current person---$json");
    debugPrint("current person---${Person.fomJson(json).name}");
    //  final box = GetStorage();
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
