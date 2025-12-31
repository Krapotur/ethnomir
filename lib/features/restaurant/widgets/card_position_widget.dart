import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/positions/widgets/position/description_position.dart';
import 'package:flutter/material.dart';

class CardPositionWidget extends StatefulWidget {
  const CardPositionWidget({super.key});

  @override
  State<CardPositionWidget> createState() => _CardPositionWidgetState();
}

class _CardPositionWidgetState extends State<CardPositionWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          GestureDetector(
            child: SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage('assets/images/menu/shorpa.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                        ),
                      ),
                      child: const Text(
                        "Новинка",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 3,
                      ),
                      color: Colors.red,
                      child: const Text(
                        "-10%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: const Text(
                        "Хит",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                        height: 230,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: theme.primaryColor,
                              width: 5,
                            ),
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
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: () {
                            AutoRouter.of(context).maybePop();
                          },
                        ),
                      ),
                      DescriptionPosition(widget: widget),
                    ],
                  ),
                ),
                // bottomNavigationBar: ButtonAddCart(widget: widget),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              'Шорпа из баранины',
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 14,
              ),
            ),
          ),
          Text(
            '200 + '
            '500калл',
            style: TextStyle(fontSize: 10, color: theme.hintColor),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '550 руб',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadiusDirectional.circular(30),
                    ),
                    child: const Icon(
                      Icons.add_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
