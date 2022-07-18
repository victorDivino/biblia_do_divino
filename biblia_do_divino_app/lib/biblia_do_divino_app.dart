import 'package:biblia_do_divino_app/app/features/search_book/presentation/pages/book_list_page.dart';
import 'package:biblia_do_divino_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/features/search_book/presentation/cubit/search_book_cubit.dart';

class BibliaDoDivinoApp extends StatelessWidget {
  const BibliaDoDivinoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bíblia do Divino",
      debugShowCheckedModeBanner: false,
      home: BlocProvider<SearchBookCubit>(
        create: (context) => locator<SearchBookCubit>(),
        child: const BookListPage(),
      ),
    );
  }
}
