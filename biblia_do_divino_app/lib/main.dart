import 'package:biblia_do_divino_app/biblia_do_divino_app.dart';
import 'package:biblia_do_divino_app/locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  runApp(const BibliaDoDivinoApp());
}
