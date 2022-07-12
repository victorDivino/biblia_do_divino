import 'package:biblia_do_divino_app/app/features/search_book/domain/entities/book.dart';

class BookMapper {
  static Book fromJson(Map json) {
    return Book(name: json["name"]);
  }
}
