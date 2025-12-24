import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';

import '../core/action_handler.dart';

class ComponentMapper {
  static Widget map(BuildContext context, ComponentModel component) {
    if (component is TitleComponent) {
      return Text(
        component.title,
        style: Theme.of(context).textTheme.headlineSmall,
      );
    }

    if (component is SpacerComponent) {
      return SizedBox(height: component.height);
    }

    if (component is DividerComponent) {
      return const Divider();
    }

    if (component is ImageBannerComponent) {
      return Image.network(component.imageUrl);
    }

    if (component is CardComponent) {
      return Card(
        child: ListTile(
          title: Text(component.title),
          subtitle: Text(component.description),
        ),
      );
    }

    if (component is InfoTileComponent) {
      return ListTile(
        leading: component.iconUrl != null
            ? CircleAvatar(backgroundImage: NetworkImage(component.iconUrl!))
            : null,
        title: Text(component.title),
        subtitle: Text(component.subtitle),
      );
    }

    if (component is ButtonComponent) {
      return ElevatedButton(
        onPressed: () => ActionHandler.handle(context, component.action),
        child: Text(component.label),
      );
    }

    if (component is HorizontalListComponent) {
      return SizedBox(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: component.items.map((card) {
            return SizedBox(
              width: 200,
              child: ComponentMapper.map(context, card),
            );
          }).toList(),
        ),
      );
    }

    return const SizedBox();
  }
}
