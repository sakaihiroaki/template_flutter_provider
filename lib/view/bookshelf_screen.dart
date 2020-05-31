import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templateprovider/viewmodels/books_viewmodel.dart';

import 'components/bookshelf.dart';

class BookshelfScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<Books>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: Center(
        child: Container(
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Bookshelf(booksData.books),
              ),
              Center(
                child: Text('totalFavoriteCount: ${booksData.favoriteCount}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
