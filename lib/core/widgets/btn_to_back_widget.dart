import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BtnToBackScreenWidget extends StatelessWidget {
  const BtnToBackScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () => context.router.back(),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(207, 255, 255, 255),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.chevron_left,
                color: const Color.fromARGB(255, 41, 41, 41),
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
