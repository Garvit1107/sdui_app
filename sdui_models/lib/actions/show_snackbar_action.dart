import 'action_model.dart';

class ShowSnackbarAction extends ActionModel {
  final String message;

  ShowSnackbarAction({required this.message});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'showSnackbar', 'message': message};
  }
}
