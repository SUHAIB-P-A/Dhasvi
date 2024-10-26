import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterprovider = StateProvider<int>(
  (ref) => 0,
);

final circleprovider = StateProvider<List<Widget>>(
  (ref) => [],
);
