import 'package:flutter/material.dart';
import 'package:templateprovider/models/book.dart';
import 'package:templateprovider/view/components/book_item.dart';

class Bookshelf extends StatelessWidget {
  final List<Book> books;

  const Bookshelf(this.books);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (ctx, index) => BookItem(
        books[index].id,
      ),
    );
  }
}
