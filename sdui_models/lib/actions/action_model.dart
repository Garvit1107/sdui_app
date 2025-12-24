import 'navigate_action.dart';
import 'go_back_action.dart';
import 'show_snackbar_action.dart';
import 'open_url_action.dart';
import 'log_event_action.dart';

abstract class ActionModel {
  ActionModel();
  Map<String, dynamic> toJson();

  factory ActionModel.fromJson(Map<String, dynamic> json) {
    switch (json['runtimeType']) {
      case 'navigate':
        return NavigateAction(screen: json['screen']);

      case 'goBack':
        return GoBackAction();

      case 'showSnackbar':
        return ShowSnackbarAction(message: json['message']);

      case 'openUrl':
        return OpenUrlAction(url: json['url']);

      case 'logEvent':
        return LogEventAction(eventName: json['eventName']);

      default:
        throw Exception('Unknown ActionModel type');
    }
  }
}
