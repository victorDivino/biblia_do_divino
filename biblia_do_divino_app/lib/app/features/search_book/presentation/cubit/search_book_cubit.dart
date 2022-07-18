import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_book_state.dart';
import '../../domain/repositories/book_repository.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  final BookRepository bookRepository;

  SearchBookCubit(this.bookRepository) : super(InitialState()) {
    getBooks();
  }

  void getBooks() async {
    try {
      emit(LoadingState());
      final books = await bookRepository.getAll();
      emit(LoadedState(books));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
