import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class InfoAboutPositionWidget extends StatelessWidget {
  final Position position;

  const InfoAboutPositionWidget({super.key, required this.position});

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
                image: AssetImage('assets/images/menu/${position.fileId}.png'),
              ),
            ),
            child: BtnCloseWidget(),
          ),
          DescriptionPosition(position: position),
        ],
      ),
    );
  }
}


