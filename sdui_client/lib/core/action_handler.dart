import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/sdui_screen.dart';

class ActionHandler {
  static void handle(BuildContext context, ActionModel action) {
    if (action is NavigateAction) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SDUIScreen(screenName: action.screen),
        ),
      );
    }

    if (action is GoBackAction) {
      Navigator.pop(context);
    }

    if (action is ShowSnackbarAction) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(action.message)));
    }

    if (action is OpenUrlAction) {
      launchUrl(Uri.parse(action.url));
    }

    if (action is LogEventAction) {
      debugPrint('Event logged: ${action.eventName}');
    }
  }
}
