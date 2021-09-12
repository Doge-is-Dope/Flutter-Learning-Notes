import 'package:flutter/material.dart';
import 'package:navigator2_sample/screens/screens.dart';

import 'modals/book.dart';

void main() {
  runApp(BooksApp());
}

class BooksApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BooksAppState();
}

class _BooksAppState extends State<BooksApp> {
  Book? _selectedBook;
  bool show404 = false;
  final List<Book> books = [
    Book('Left Hand of Darkness', 'Ursula K. Le Guin'),
    Book('Too Like the Lightning', 'Ada Palmer'),
    Book('Kindred', 'Octavia E. Butler'),
  ];

  void initState() {
    super.initState();
  }

  void _handleBookTapped(Book book) {
    setState(() {
      _selectedBook = book;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      home: Navigator(
        pages: [
          MaterialPage(
              key: ValueKey('BooksListPage'),
              child: BooksListScreen(
                books: books,
                onTapped: _handleBookTapped,
              )),
          if (_selectedBook != null)
            MaterialPage(
              key: ValueKey(_selectedBook),
              child: BookDetailsScreen(book: _selectedBook!),
            )
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
