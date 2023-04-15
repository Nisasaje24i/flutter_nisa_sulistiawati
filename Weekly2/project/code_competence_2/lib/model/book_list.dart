class Book {
  String imagePath;
  String title;
  String author;
  String view;

  Book(
      {required this.imagePath,
      required this.title,
      required this.author,
      required this.view});
}

List<Book> bookList = [
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Bumi Manusia',
      author: 'Pramoedya Ananta Toer',
      view: '19k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Laskar Pelangi',
      author: 'Andrea Hirata',
      view: '10k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Anak Semua Bangsa',
      author: 'Pramoedya Ananta Toer',
      view: '19k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Negeri 5 Menara',
      author: 'Ahmad Fuadi',
      view: '12k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Perahu Kertas',
      author: 'Dee Lestari',
      view: '29k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Bidadari Bidadari Surga',
      author: 'Tere Liye',
      view: '15k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      view: '9k'),
  Book(
      imagePath: 'assets/images/book1.png',
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      view: '10k'),
];
