import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InfoAboutPositionWidget extends StatelessWidget {
  const InfoAboutPositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0),
            height: 230,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: theme.primaryColor, width: 5),
              ),
              borderRadius: const BorderRadiusDirectional.vertical(
                top: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/menu/shorpa.jpg'),
              ),
            ),
            child: GestureDetector(
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
            ),
          ),
          DescriptionPosition(),
        ],
      ),
    );
  }
}
