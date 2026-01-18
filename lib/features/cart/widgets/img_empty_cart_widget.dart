import 'package:flutter/material.dart';

class ImgEmptyCartWidget extends StatelessWidget {
  const ImgEmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/images/cart_empty.png', fit: BoxFit.contain,
        ),
      ),
    );
  }
}
