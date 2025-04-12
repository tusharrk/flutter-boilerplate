import 'package:flutter_boilerplate/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:flutter_boilerplate/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:flutter_boilerplate/ui/views/home/home_view.dart';
import 'package:flutter_boilerplate/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_boilerplate/services/storage_service.dart';
import 'package:flutter_boilerplate/services/environment_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: StorageService),
    LazySingleton(classType: EnvironmentService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
