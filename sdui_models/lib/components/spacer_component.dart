import 'component_model.dart';

class SpacerComponent extends ComponentModel {
  final double height;

  SpacerComponent({required this.height});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'spacer', 'height': height};
  }
}
