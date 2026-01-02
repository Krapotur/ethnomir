import 'package:flutter/material.dart';

class NewsFeedWidget extends StatelessWidget {
  const NewsFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/images/news_feed.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
