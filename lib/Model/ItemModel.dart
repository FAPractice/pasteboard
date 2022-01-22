class Item {
  String? text;
  DateTime? added;

  Item({this.text}) {
    added = DateTime.now();
  }
}
