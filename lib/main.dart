import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:templateprovider/view/bookshelf_screen.dart';
import 'package:templateprovider/viewmodels/books_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Books(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BookshelfScreen(),
      ),
    );
  }
}
