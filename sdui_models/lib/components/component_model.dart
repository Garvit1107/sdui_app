import 'title_component.dart';
import 'spacer_component.dart';
import 'divider_component.dart';
import 'image_banner_component.dart';
import 'button_component.dart';
import 'info_tile_component.dart';
import 'card_component.dart';
import 'horizontal_list_component.dart';
import '../actions/action_model.dart';

abstract class ComponentModel {
  ComponentModel();
  Map<String, dynamic> toJson();

  factory ComponentModel.fromJson(Map<String, dynamic> json) {
    switch (json['runtimeType']) {
      case 'title':
        return TitleComponent(title: json['title']);

      case 'spacer':
        return SpacerComponent(height: (json['height'] as num).toDouble());

      case 'divider':
        return DividerComponent();

      case 'imageBanner':
        return ImageBannerComponent(imageUrl: json['imageUrl']);

      case 'button':
        return ButtonComponent(
          label: json['label'],
          action: ActionModel.fromJson(json['action']),
        );

      case 'infoTile':
        return InfoTileComponent(
          title: json['title'],
          subtitle: json['subtitle'],
          iconUrl: json['iconUrl'],
        );

      case 'card':
        return CardComponent(
          title: json['title'],
          description: json['description'],
        );

      case 'horizontalList':
        return HorizontalListComponent(
          items: (json['items'] as List)
              .map(
                (e) => CardComponent(
                  title: e['title'],
                  description: e['description'],
                ),
              )
              .toList(),
        );

      default:
        throw Exception('Unknown ComponentModel type: ${json['runtimeType']}');
    }
  }
}
