import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text(
            'Подключение к серверу...',
            style:
                theme.textTheme.titleSmall?.copyWith(color: theme.primaryColor),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Text(
              'Отмена',
              style: theme.textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
