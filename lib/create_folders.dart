 import 'dart:io';

void main() {
  //project path
  final projectPath = "${Directory.current.path}/lib/features/user";

  //folder creation
  final directories = [
    '$projectPath/core/utils',
    '$projectPath/data/models',
    '$projectPath/data/repositories',
    '$projectPath/data/datasources',
    '$projectPath/domain/entities',
    '$projectPath/domain/repositories',
    '$projectPath/domain/usecases',
    '$projectPath/presentation/pages',
    '$projectPath/presentation/widgets',
  ];

  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Created: $dir ✓');
    } else {
      print('Directory already exists: $dir ');
    }
  }
  print('creating files Successfully ✓');
}
 