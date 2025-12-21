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
            onTap: () => AutoRouter.of(context).back(),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.chevron_left,
                color: const Color.fromARGB(255, 78, 77, 77),
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
