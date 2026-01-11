import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/core/theme/theme.dart';
import 'package:ethnomir/features/splash/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:ethnomir/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? hotel;
  String? room;
  String? params;
  bool isQueryParametrs = false;
  final currentUri = Uri.base;

  @override
  void initState() {
    super.initState();
    // getParams();
    Future.delayed(const Duration(milliseconds: 3), () {
      if (mounted) {
        context.router.replaceAll(
          // [
          //   MediaQuery.of(context).size.width > 800
          //       ? AlertRoute()
          //       : EstablishmentsRoute(),
          // ],
          [
            EstablishmentRoute(
              establishment: Establishment(
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
            ),
          ],
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isQueryParametrs
        ? Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: .min,
                children: [
                  Text('Адрес: $currentUri'),
                  Text('Параметры: ${params.toString()}'),
                  Text('Гостиница: ${hotel.toString()}'),
                  Text('Номер: ${room..toString()}'),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: MediaQuery.of(context).size.width > 800
                ? Center(
                    child: Text(
                      'Для корректного отображения контента, используйте смартфон',
                      style: TextStyle(
                        fontSize: ThemeTextScaler().responsiveFontSize(
                          context,
                          18,
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(flex: 3, child: SizedBox()),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: .center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/auth_screen/logo.jpg',
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                              TextSloganWidget(),
                            ],
                          ),
                        ),
                        BottomImgStreetWidget(),
                      ],
                    ),
                  ),
          );
  }

  void getParams() {
    if (currentUri.query.isNotEmpty) {
      isQueryParametrs = true;

      List<String> querySplit = currentUri.query.split('&');
      List<String> queryHotelSplit = querySplit[0].split('=');
      List<String> queryRoomSplit = querySplit[1].split('=');

      hotel = queryHotelSplit[1];
      room = queryRoomSplit[1];
    }
  }
}
