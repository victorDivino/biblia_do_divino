import 'package:biblia_do_divino_app/app/features/search_book/presentation/cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/search_book_state.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Livros"),
      ),
      body: BlocBuilder<SearchBookCubit, SearchBookState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return const Center(
              child: Text("Erro ao carregar os livros"),
            );
          } else if (state is LoadedState) {
            final books = state.books;

            return ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(books[index].name),
                  leading: Text((index + 1).toString()),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
