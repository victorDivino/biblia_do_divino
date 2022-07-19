import 'package:flutter/material.dart';
import 'biblia_do_divino_app.dart';
import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  runApp(const BibliaDoDivinoApp());
}
