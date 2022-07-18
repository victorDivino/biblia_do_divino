import 'package:equatable/equatable.dart';
import '../../domain/entities/book.dart';

abstract class SearchBookState extends Equatable {}

class InitialState extends SearchBookState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends SearchBookState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends SearchBookState {
  LoadedState(this.books);

  final List<Book> books;

  @override
  List<Object> get props => [books];
}

class ErrorState extends SearchBookState {
  @override
  List<Object> get props => [];
}
