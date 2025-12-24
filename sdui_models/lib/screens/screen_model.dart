import 'vertical_screen_model.dart';
import 'error_screen_model.dart';
import '../components/component_model.dart';
import '../actions/action_model.dart';

abstract class ScreenModel {
  ScreenModel();
  Map<String, dynamic> toJson();

  factory ScreenModel.fromJson(Map<String, dynamic> json) {
    switch (json['runtimeType']) {
      case 'verticalScreen':
        return VerticalScreenModel(
          screenTitle: json['screenTitle'],
          components: (json['components'] as List)
              .map((e) => ComponentModel.fromJson(e))
              .toList(),
        );

      case 'errorScreen':
        return ErrorScreenModel(
          title: json['title'],
          message: json['message'],
          action: json['action'] != null
              ? ActionModel.fromJson(json['action'])
              : null,
        );

      default:
        throw Exception('Unknown ScreenModel type');
    }
  }
}
