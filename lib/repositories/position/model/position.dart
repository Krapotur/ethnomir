class Position {
  String id;
  bool isActive;
  bool isPopular;
  bool isNew;
  String title;
  String description;
  String weight;
  String caloric;
  String price;
  int discont;
  String establishmentId;
  String positionCategoryId;
  String fileId;
  int quantityInCart = 1;

  Position({
    required this.id,
    required this.isActive,
    required this.title,
    required this.description,
    required this.weight,
    required this.caloric,
    required this.price,
    required this.discont,
    required this.establishmentId,
    required this.positionCategoryId,
    required this.fileId,
    required this.isPopular,
    required this.isNew,
  });
}
