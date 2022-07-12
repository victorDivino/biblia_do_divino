import 'package:biblia_do_divino_app/app/features/search_book/data/datasources/book_db_impl.dart';
import 'package:biblia_do_divino_app/app/features/search_book/data/repositories/book_repository_impl.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/entities/book.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final bookDB = BookDBImpl();
  final bookRepositoryImpl = BookRepositoryImpl(bookDB);

  test('GetAll should returns 66 books', () async {
    final books = await bookRepositoryImpl.getAll();
    expect(books, isA<List<Book>>());
    expect(books.length, 66);
  });
}
