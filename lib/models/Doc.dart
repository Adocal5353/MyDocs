class Document {
  final int id;
  final String title;
  final String? description;
  final String? author;
  final String Dlink;

  const Document(
    this.Dlink,
    this.id,
    this.author,
    this.title,
    this.description,
  );

  factory Document.fromJson(dynamic json) {
    return Document(
      json['Dlink'] as String,
      json['id'] as int,
      json['author'] as String,
      json['title'] as String,
      json['description'] as String,
    );
  }
}
