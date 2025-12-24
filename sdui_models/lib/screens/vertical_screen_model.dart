import '../components/component_model.dart';
import 'screen_model.dart';

class VerticalScreenModel extends ScreenModel {
  final String screenTitle;
  final List<ComponentModel> components;

  VerticalScreenModel({required this.screenTitle, required this.components});

  @override
  Map<String, dynamic> toJson() {
    return {
      'runtimeType': 'verticalScreen',
      'screenTitle': screenTitle,
      'components': components.map((c) => c.toJson()).toList(),
    };
  }
}
