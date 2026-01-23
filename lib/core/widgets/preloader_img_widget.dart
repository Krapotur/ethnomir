import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../repositories/models.dart';

class PreloaderAssetImageWidget extends StatelessWidget {
  const PreloaderAssetImageWidget({
    super.key,
    this.height,
    this.position,
    this.category,
  });

  final Category? category;
  final Position? position;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();
    final theme = Theme.of(context);

    String urlCategory = 'assets/images/categories_img/${category?.fileId}.png';
    String urlPosition = 'assets/images/menu/${position?.fileId}.png';

    BorderRadius borderRadiusPosition = BorderRadius.only(
      topLeft: Radius.circular(18),
      topRight: Radius.circular(18),
    );

    return Stack(
      alignment: .center,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation(theme.primaryColor),
            ),
          ),
        ),

        Container(
          height: height ?? (model.activeCategory == category?.title ? 62 : 60),
          width: position != null
              ? double.infinity
              : model.activeCategory == category?.title
              ? 62
              : 60,
          decoration: BoxDecoration(
            border: model.activeCategory == category?.title
                ? Border.all(width: 2, color: Color(0xFFF47920))
                : null,
            borderRadius: position != null
                ? borderRadiusPosition
                : BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(position != null ? urlPosition : urlCategory),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
