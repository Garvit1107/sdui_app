import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:sdui_models/sdui_models.dart';

void main() async {
  final router = Router();

  router.post('/screens/<screenName>', (Request request, String screenName) {
    ScreenModel screen;

    switch (screenName) {
      case 'home':
        screen = buildHomeScreen();
        break;

      default:
        screen = ErrorScreenModel(
          title: 'Not Found',
          message: 'Screen "$screenName" does not exist',
          action: NavigateAction(screen: 'home'),
        );
    }

    return Response.ok(
      jsonEncode(screen.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  });

  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(router.call);

  final server = await io.serve(handler, 'localhost', 8080);

  print(
    '🚀 SDUI Server running at http://${server.address.host}:${server.port}',
  );
}

ScreenModel buildHomeScreen() {
  return VerticalScreenModel(
    screenTitle: 'Home',
    components: [
      TitleComponent(title: 'Welcome to SDUI App'),

      ImageBannerComponent(imageUrl: 'https://picsum.photos/600/300'),

      SpacerComponent(height: 16),

      HorizontalListComponent(
        items: List.generate(
          4,
          (index) => CardComponent(
            title: 'Card ${index + 1}',
            description: 'This is card ${index + 1}',
          ),
        ),
      ),

      SpacerComponent(height: 24),

      ButtonComponent(
        label: 'Go to Profile',
        action: NavigateAction(screen: 'profile'),
      ),

      ButtonComponent(
        label: 'Go to Settings',
        action: NavigateAction(screen: 'settings'),
      ),
    ],
  );
}
