import 'package:find_buddy/app/di.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  setupDi();
  runApp(const App());
}
