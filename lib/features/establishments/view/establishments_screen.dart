import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/establishments/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

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
      raiting: '5.0',
      isRestaurant: false,
      isClosed: false,
      delivery: 'Бесплатная',
      price: '470',
      imgTitle: 'kochevnik',
    ),
    Establishment(
      title: 'Борщ',
      kitchen: 'Русская',
      raiting: '4.7',
      isRestaurant: false,
      isClosed: true,
      delivery: 'от 900р',
      price: '500',
      imgTitle: 'borsh',
    ),
    Establishment(
      title: 'Чайхана',
      kitchen: 'Восточная',
      delivery: 'от 1200р',
      raiting: '4.9',
      isRestaurant: true,
      isClosed: true,
      price: '650',
      imgTitle: 'chai',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text('Рестораны'),
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(15),
          itemCount: establishmentList.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => context.router.navigate(
              EstablishmentRoute(establishment: establishmentList[index]),
            ),
            child: CardEstablishmenttWidget(
              establishment: establishmentList[index],
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 15),
        ),
      ),
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
