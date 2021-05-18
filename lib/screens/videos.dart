import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:humming_sparrow_task/widgets/app_drawer.dart';
import 'package:humming_sparrow_task/widgets/news_card.dart';
import 'package:humming_sparrow_task/Data/data.dart';
import 'package:video_player/video_player.dart';
import 'file:///D:/My%20files/Flutter%20projects-%20AYu/humming_sparrow_task/lib/widgets/video_controller.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NewsCard> newsWidgets = [];
    for (var item in data.sublist(0, 3)) {
      newsWidgets.add(NewsCard(
        imagePath: item['urlToImage'],
        headline: item['title'],
        description: "",
        category: item['category'],
        date: item['publishedAt'],
        showBookmark: false,
      ));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A322B),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Videos',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            VideoController(
              videoPlayerController:
                  VideoPlayerController.asset('videos/sunrise.mp4'),
              looping: false,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
              child: Text(
                "This is a sample headline. More bigger",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
              child: Text(
                "17.05.2021 11:59 PM",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
              child: Text(
                'This is the sample description of the above sample headline. More description.',
                style: TextStyle(color: Colors.grey.shade700),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                softWrap: true,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              height: 40.0,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2)),
                  ]),
              child: Center(
                child: Text(
                  'Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              children: newsWidgets,
            ),
          ],
        ),
      ),
    );
  }
}
