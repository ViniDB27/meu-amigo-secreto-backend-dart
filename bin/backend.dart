import 'package:shelf/shelf_io.dart' as io;
import 'package:backend/backend.dart';

void main(List<String> arguments) async {
  final handler = await startServer();
  final server = await io.serve(handler, '0.0.0.0', 3333);

  print("Server listening on http://${server.address.address}:${server.port}");
}