import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/app.bottomsheets.dart';
import 'package:flutter_boilerplate/app/app.dialogs.dart';
import 'package:flutter_boilerplate/app/app.locator.dart';
import 'package:flutter_boilerplate/app/app.router.dart';
import 'package:flutter_boilerplate/core/theme/custom_dark_theme.dart';
import 'package:flutter_boilerplate/core/theme/custom_light_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'app_name',
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.system,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
    );
  }
}
