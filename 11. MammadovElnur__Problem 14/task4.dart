mixin Shareable {
  void share() {
    print('Publishing documents');
  }
}

class Document with Shareable {
  String content;

  Document(this.content);

  void display() {
    print('Document content: $content');
  }
}

void main() {
  var test = Document('My wikipedia');

  test.display();
  test.share();
}
