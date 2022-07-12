import 'package:biblia_do_divino_app/app/features/search_book/domain/repositories/book_db.dart';
import 'package:flutter/services.dart';

class BookDBImpl implements BookDb {
  @override
  Future<String> readJson() async =>
      await rootBundle.loadString('assets/nvi.json');
}
