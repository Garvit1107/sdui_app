import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'screens/error_screen.dart';

Router buildRouter() {
  final router = Router();

  router.post('/screens/<screenName>', (Request request, String screenName) {
    final screen = getScreenByName(screenName);

    return Response.ok(
      jsonEncode(screen.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  });

  return router;
}
