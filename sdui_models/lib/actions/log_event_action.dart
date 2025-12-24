import 'action_model.dart';

class LogEventAction extends ActionModel {
  final String eventName;

  LogEventAction({required this.eventName});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'logEvent', 'eventName': eventName};
  }
}
