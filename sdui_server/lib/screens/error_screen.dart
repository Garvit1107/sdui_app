import 'package:sdui_models/sdui_models.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

ScreenModel getScreenByName(String screenName) {
  switch (screenName) {
    case 'home':
      return buildHomeScreen();

    case 'profile':
      return buildProfileScreen();

    case 'settings':
      return buildSettingsScreen();

    default:
      return ErrorScreenModel(
        title: 'Not Found',
        message: 'Screen "$screenName" does not exist',
      );
  }
}
