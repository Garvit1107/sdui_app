import '../actions/action_model.dart';
import 'screen_model.dart';

class ErrorScreenModel extends ScreenModel {
  final String title;
  final String message;
  final ActionModel? action;

  ErrorScreenModel({required this.title, required this.message, this.action});

  @override
  Map<String, dynamic> toJson() {
    return {
      'runtimeType': 'errorScreen',
      'title': title,
      'message': message,
      'action': action?.toJson(),
    };
  }
}
