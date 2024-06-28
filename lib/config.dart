import 'package:flutter_riverpod/flutter_riverpod.dart';

final configProvider = Provider<Config>((ref) => throw Exception(
    'You need to provide a config value in the environment\'s entrypoint'));

class Config {}
