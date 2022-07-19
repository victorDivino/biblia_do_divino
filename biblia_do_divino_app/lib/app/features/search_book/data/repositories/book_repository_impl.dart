import 'dart:convert';
import '../../domain/entities/book.dart';
import '../../domain/repositories/book_db.dart';
import '../../domain/repositories/book_repository.dart';
import 'book_mapper.dart';

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
