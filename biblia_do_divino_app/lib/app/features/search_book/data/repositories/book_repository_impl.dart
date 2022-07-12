import 'dart:convert';
import 'package:biblia_do_divino_app/app/features/search_book/data/repositories/book_mapper.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/entities/book.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/repositories/book_db.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/repositories/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookDb _bookDB;

  BookRepositoryImpl(this._bookDB) : super();

  @override
  Future<List<Book>> getAll() async {
    final json = await _bookDB.readJson();
    final books = mapToListOfBooks(json);
    return books;
  }

  List<Book> mapToListOfBooks(String json) =>
      List<Book>.from(jsonDecode(json).map((obj) => BookMapper.fromJson(obj)));
}
