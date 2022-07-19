import '../../domain/entities/book.dart';

class BookMapper {
  static Book fromJson(Map json) {
    return Book(name: json["name"]);
  }
}
