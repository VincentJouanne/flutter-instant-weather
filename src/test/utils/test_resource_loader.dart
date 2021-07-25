import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:platform/platform.dart';
import 'package:flutter/services.dart';

// Loads the cached material icon font.
// Only necessary for golden tests. Relies on the tool updating cached assets before
// running tests.

Future<void> loadIconFont() async {
  const FileSystem fs = LocalFileSystem();
  const Platform platform = LocalPlatform();
  final Directory flutterRoot =
      fs.directory(platform.environment['FLUTTER_ROOT']);

  final File iconFont = flutterRoot.childFile(
    fs.path.join(
      'bin',
      'cache',
      'artifacts',
      'material_fonts',
      'MaterialIcons-Regular.otf',
    ),
  );

  final Future<ByteData> bytes =
      Future<ByteData>.value(iconFont.readAsBytesSync().buffer.asByteData());

  await (FontLoader('MaterialIcons')..addFont(bytes)).load();
}
