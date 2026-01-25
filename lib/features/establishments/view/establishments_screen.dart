import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/widgets/widgets.dart';
import 'package:ethnomir/features/cart/provider/model.dart';
import 'package:ethnomir/features/establishments/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class EstablishmentsScreen extends StatefulWidget {
  final String? kitchen;
  const EstablishmentsScreen({super.key, this.kitchen});

  @override
  State<EstablishmentsScreen> createState() => _EstablishmentsScreenState();
}

class _EstablishmentsScreenState extends State<EstablishmentsScreen> {
  LinearGradient linearGradient = LinearGradient(
    colors: [Color(0xFFF47920), Color.fromARGB(255, 246, 246, 246)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  List<Establishment> establishmentList = [
    Establishment(
      title: 'Мудрый кочевник',
      kitchen: 'Восточная',
      isActive: true,
      establishmentTypeId: 'Кафе',
      description: 'Отличное место',
      deliveryPrice: '1100',
      isDeliveryFreeThreshold: false,
      deliveryTime: '45',
      fileId: 'kochevnik',
    ),
    Establishment(
      title: 'Борщ',
      kitchen: 'Русская',
      isActive: true,
      establishmentTypeId: 'Кафе',
      description: 'Отличное место',
      deliveryPrice: '890',
      isDeliveryFreeThreshold: false,
      deliveryTime: '30',
      fileId: 'borsh',
    ),
    Establishment(
      title: 'Чайхана',
      kitchen: 'Восточная',
      isActive: true,
      establishmentTypeId: 'Ресторан',
      description: 'Отличное место',
      deliveryPrice: '',
      isDeliveryFreeThreshold: true,
      deliveryTime: '40',
      fileId: 'chai',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CartModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text('Рестораны'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemCount: establishmentList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.router.push(
            EstablishmentRoute(establishment: establishmentList[index]),
          ),

          // context.router.push(
          //   EstablishmentRoute(establishment: establishmentList[index]),
          // ),
          child: CardEstablishmenttWidget(
            establishment: establishmentList[index],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 15),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: model.cart.isNotEmpty
          ? const FloatingButtonCartWidget()
          : const SizedBox.shrink(),
    );
  }

  void getKitchenList(String kitchen) {
    List<Establishment> newList = [];

    for (var rest in establishmentList) {
      if (rest.kitchen == kitchen) {
        newList.add(rest);
      }
    }
    setState(() {
      establishmentList = newList;
    });
  }
}
