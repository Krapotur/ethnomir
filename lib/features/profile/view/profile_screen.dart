import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/avatar_widget.dart';
import 'package:ethnomir/features/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text('Профиль'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AvatarWidget(height: 80, width: 80),
            const SizedBox(height: 10),
            Text('Петров Михаил'),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(
                  top: 25,
                  right: 15,
                  left: 15,
                  bottom: 15,
                ),
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: CardButtonWidget(
                          title: 'Мои билеты',
                          subTitle: 'Посмотреть доступные',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: CardButtonWidget(
                          title: 'Мои события',
                          subTitle: 'Подробнее',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CardButtonWidget(
                    title: 'Заказ еды',
                    subTitle: 'История заказов',
                  ),
                  const SizedBox(height: 10),
                  CardButtonWidget(title: 'Мой отель', subTitle: 'Информация'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: CardButtonWidget(
                          title: 'Карты для оплаты',
                          subTitle: 'Добавить/изменить',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: CardButtonWidget(
                          title: 'Профиль',
                          subTitle: 'Редактировать',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            223,
                            223,
                            223,
                          ).withValues(alpha: 0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        SizedBox(
                          width: 220,
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                'Поддержка',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF3A3A3A),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Связаться с нами, если у вас возникли проблемы с доставкой',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Flexible(
                              flex: 2,
                              child: SupportBtnContainerWidget()),
                            SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    252,
                                    252,
                                    252,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Color(0xFFF47920),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
