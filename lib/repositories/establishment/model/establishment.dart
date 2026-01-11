class Establishment {
  final bool isActive;
  final String title;
  final String kitchen;
  final String establishmentTypeId;
  final String description;
  final String deliveryPrice;
  final bool isDeliveryFreeThreshold;
  final String deliveryTime;
  final String fileId;

  const Establishment({
    required this.isActive,
    required this.title,
    required this.kitchen,
    required this.establishmentTypeId,
    required this.description,
    required this.deliveryPrice,
    required this.isDeliveryFreeThreshold,
    required this.deliveryTime,
    required this.fileId,
  });
}
