import 'component_model.dart';

class InfoTileComponent extends ComponentModel {
  final String title;
  final String subtitle;
  final String? iconUrl;

  InfoTileComponent({
    required this.title,
    required this.subtitle,
    this.iconUrl,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'runtimeType': 'infoTile',
      'title': title,
      'subtitle': subtitle,
      'iconUrl': iconUrl,
    };
  }
}
