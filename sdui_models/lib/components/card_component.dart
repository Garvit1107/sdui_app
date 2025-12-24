import 'component_model.dart';

class CardComponent extends ComponentModel {
  final String title;
  final String description;

  CardComponent({required this.title, required this.description});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'card', 'title': title, 'description': description};
  }
}
