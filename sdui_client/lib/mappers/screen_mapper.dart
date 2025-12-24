import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';

import 'component_mapper.dart';

class ScreenMapper {
  static Widget map(BuildContext context, ScreenModel screen) {
    if (screen is VerticalScreenModel) {
      return Scaffold(
        appBar: AppBar(title: Text(screen.screenTitle)),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: screen.components
              .map((c) => ComponentMapper.map(context, c))
              .toList(),
        ),
      );
    }

    if (screen is ErrorScreenModel) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(screen.title, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text(screen.message),
            ],
          ),
        ),
      );
    }

    return const Scaffold(body: SizedBox());
  }
}
