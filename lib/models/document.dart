// ignore: file_names

///this is the model of a document
class Document {
  final int id;
  final String title;
  final String? description;
  final String author;
  final String dlink;
  final int size;
  const Document(this.dlink, this.id, this.author, this.title, this.description,
      this.size);

  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      json['dlink'],
      json['id'],
      json['author'],
      json['title'],
      json['description'],
      json['size'],
    );
  }
}
