import 'action_model.dart';

class GoBackAction extends ActionModel {
  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'goBack'};
  }
}
