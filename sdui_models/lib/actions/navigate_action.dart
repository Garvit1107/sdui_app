import 'action_model.dart';

class NavigateAction extends ActionModel {
  final String screen;

  NavigateAction({required this.screen});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'navigate', 'screen': screen};
  }
}
