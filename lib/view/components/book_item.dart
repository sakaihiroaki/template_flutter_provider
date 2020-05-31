import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templateprovider/viewmodels/books_viewmodel.dart';

class BookItem extends StatelessWidget {
  final String bookId;

  const BookItem(this.bookId);

  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<Books>(context);
    final book = booksData.findById(bookId);
    return ListTile(
      leading: Text(book.id),
      title: Text(book.title),
      trailing: IconButton(
        icon: Icon(book.isFavorite ? Icons.star : Icons.star_border),
        onPressed: () => booksData.toggleFavorite(book.id),
      ),
    );
  }
}
