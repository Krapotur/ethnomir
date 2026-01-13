import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BtnCloseWidget extends StatelessWidget {
  const BtnCloseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.close, color: Colors.white),
        ),
      ),
      onTap: () {
        context.router.maybePop();
      },
    );
  }
}