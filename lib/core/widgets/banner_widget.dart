import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: InkWell(
        onTap: () => _openLink(context),
        child: Stack(
          alignment: AlignmentGeometry.bottomRight,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(185, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Text(
                    'Широкая масленица',
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: .bold,
                      height: 1,
                    ),
                  ),
                  Text(
                    '21 - 22 февраля',
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: .bold,
                      height: 0.8,
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

  Future<void> _openLink(BuildContext context) async {
    try {
      final uri = Uri.parse(
        'https://ethnomir.ru/events-calendar/2026/fevral/shirokaya-maslenitsa-89810/',
      );

      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.platformDefault, // Открыть в браузере
          // mode: LaunchMode.inAppWebView, // Открыть внутри приложения
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: true,
          ),
        );
      } else {
        _showErrorDialog(context, 'Не удалось открыть ссылку');
      }
    } catch (e) {
      _showErrorDialog(context, 'Ошибка: $e');
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Ошибка'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
