import 'package:flutter/material.dart';
import 'package:templateprovider/models/book.dart';

class Books with ChangeNotifier {
  List<Book> books = [
    Book(
      '1',
      'Harry Potter',
    ),
    Book(
      '2',
      'FACTFULNESS',
    ),
  ];

  Book findById(String id) {
    for (Book book in books) {
      if (book.id == id) return book;
    }
    return null;
  }

  void toggleFavorite(String id) {
    Book book = findById(id);
    if (book == null) return;

    book.toggleFavorite();
    notifyListeners();
  }

  int get favoriteCount {
    int count = 0;
    for (Book book in books) {
      if (book.isFavorite) count++;
    }
    return count;
  }
}
