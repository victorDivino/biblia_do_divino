import 'package:biblia_do_divino_app/app/features/search_book/data/datasources/book_db_impl.dart';
import 'package:biblia_do_divino_app/app/features/search_book/data/repositories/book_repository_impl.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/repositories/book_db.dart';
import 'package:biblia_do_divino_app/app/features/search_book/domain/repositories/book_repository.dart';
import 'package:biblia_do_divino_app/app/features/search_book/presentation/cubit/search_book_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerFactory<BookDb>(() => BookDBImpl());
  locator.registerFactory<BookRepository>(() => BookRepositoryImpl(locator()));
  locator.registerFactory<SearchBookCubit>(() => SearchBookCubit(locator()));
}
