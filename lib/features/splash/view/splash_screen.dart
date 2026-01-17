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
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.router.replaceAll(
          [
            MediaQuery.of(context).size.width > 800
                ? AlertRoute()
                : EstablishmentsRoute(),
          ],
          // [CartRoute()]
          // [
          //   EstablishmentRoute(
          //     establishment: Establishment(
          //       title: 'Мудрый кочевник',
          //       kitchen: 'Восточная',
          //       isActive: true,
          //       establishmentTypeId: 'Кафе',
          //       description: 'Отличное место',
          //       deliveryPrice: '1100',
          //       isDeliveryFreeThreshold: false,
          //       deliveryTime: '45',
          //       fileId: 'kochevnik',
          //     ),
          //   ),
          // ],
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
                    // TweenAnimationBuilder анимирует значение Tween от начального до конечного
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(
                        begin: 0.5,
                        end: 1.0,
                      ), // Масштаб от 50% до 100%
                      duration: const Duration(
                        seconds: 1,
                      ), // Медленная анимация: 3 секунды
                      curve: Curves.slowMiddle, // Плавное начало и конец

                      builder: (BuildContext context, double scale, Widget? child) {
                        // scale будет меняться от 0.5 до 1.0 в течение 3 секунд
                        return Transform.scale(
                          scale: scale,
                          child: Image.asset(
                            'assets/images/auth_screen/logo.png', // Замените на свой URL/Asset
                            width: 300,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
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
