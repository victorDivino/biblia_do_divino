import 'package:get_it/get_it.dart';
import 'app/features/search_book/domain/repositories/book_db.dart';
import 'app/features/search_book/domain/repositories/book_repository.dart';
import 'app/features/search_book/data/datasources/book_db_impl.dart';
import 'app/features/search_book/data/repositories/book_repository_impl.dart';
import 'app/features/search_book/presentation/cubit/search_book_cubit.dart';

final locator = GetIt.instance;

void setupDependencyInjection() {
  locator.registerFactory<BookDb>(() => BookDBImpl());
  locator.registerFactory<BookRepository>(() => BookRepositoryImpl(locator()));
  locator.registerFactory<SearchBookCubit>(() => SearchBookCubit(locator()));
}
