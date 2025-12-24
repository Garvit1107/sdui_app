import '../actions/action_model.dart';
import 'component_model.dart';

class ButtonComponent extends ComponentModel {
  final String label;
  final ActionModel action;

  ButtonComponent({required this.label, required this.action});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'button', 'label': label, 'action': action.toJson()};
  }
}
