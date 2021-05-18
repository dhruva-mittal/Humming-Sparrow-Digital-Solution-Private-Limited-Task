import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/Data/data.dart';
import 'package:humming_sparrow_task/widgets/news_card.dart';
import 'package:humming_sparrow_task/widgets/app_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NewsCard> newsWidgets = [];
    for (var item in data) {
      newsWidgets.add(NewsCard(
        imagePath: item['urlToImage'],
        headline: item['title'],
        description: item['description'],
        category: item['category'],
        date: item['publishedAt'],
      ));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A322B),
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: newsWidgets,
      ),
    );
  }
}
