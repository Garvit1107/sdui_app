import 'component_model.dart';

class TitleComponent extends ComponentModel {
  final String title;

  TitleComponent({required this.title});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'title', 'title': title};
  }
}
