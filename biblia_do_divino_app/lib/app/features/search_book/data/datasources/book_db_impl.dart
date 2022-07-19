import 'package:flutter/services.dart';
import '../../domain/repositories/book_db.dart';

class BookDBImpl implements BookDb {
  @override
  Future<String> readJson() async =>
      await rootBundle.loadString('assets/nvi.json');
}
