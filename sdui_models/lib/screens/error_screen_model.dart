import 'screen_model.dart';

class ErrorScreenModel extends ScreenModel {
  final String title;
  final String message;

  ErrorScreenModel({required this.title, required this.message});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'errorScreen', 'title': title, 'message': message};
  }
}
