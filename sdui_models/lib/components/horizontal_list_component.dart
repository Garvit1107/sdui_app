import 'card_component.dart';
import 'component_model.dart';

class HorizontalListComponent extends ComponentModel {
  final List<CardComponent> items;

  HorizontalListComponent({required this.items});

  @override
  Map<String, dynamic> toJson() {
    return {
      'runtimeType': 'horizontalList',
      'items': items.map((e) => e.toJson()).toList(),
    };
  }
}
