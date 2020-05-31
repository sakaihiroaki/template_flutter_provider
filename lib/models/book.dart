class Book {
  final String id;
  final String title;
  bool isFavorite = false;

  Book(this.id, this.title);

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}
