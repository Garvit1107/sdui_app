import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

import 'router.dart';

Future<void> startServer() async {
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(buildRouter().call);

  final server = await io.serve(handler, 'localhost', 8080);

  print(
    '🚀 SDUI Server running at http://${server.address.host}:${server.port}',
  );
}
