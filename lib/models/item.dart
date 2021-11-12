class Item {
  final String code;
  final String name;
  final String image;
  int cartQuantity = 0;

  Item({
    required this.code,
    required this.name,
    required this.image,
    cartQuantity,
  });
}
