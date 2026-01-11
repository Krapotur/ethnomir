class Position {
  final bool isActive;
  final bool isPopular;
  final bool isNew;
  final String title;
  final String description;
  final String weight;
  final String caloric;
  final String price;
  final String discont;
  final String establishmentId;
  final String positionCategoryId;
  final String fileId;

  const Position({
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
