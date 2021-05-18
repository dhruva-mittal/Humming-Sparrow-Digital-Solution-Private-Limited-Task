import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String headline;
  final String description;
  final String category;
  final String date;
  final bool showBookmark;

  NewsCard(
      {@required this.imagePath,
      @required this.headline,
      @required this.description,
      @required this.category,
      @required this.date,
      this.showBookmark = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        this.imagePath,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    this.headline,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    this.description,
                    style: TextStyle(color: Colors.grey.shade700),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                  ),
                  SizedBox(height: 8.0),
                  Wrap(
                    spacing: 8.0,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.grey.shade600,
                            size: 18.0,
                          ),
                          SizedBox(width: 2.0),
                          Text(
                            this.date,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        color: Colors.deepOrange,
                        child: Text(
                          this.category,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Bookmark(showBookmark: this.showBookmark),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bookmark extends StatefulWidget {
  final bool showBookmark;

  Bookmark({this.showBookmark = true});
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return widget.showBookmark
        ? GestureDetector(
            onTap: () {
              setState(() {
                _isActive = !_isActive;
              });
            },
            child: Icon(
              _isActive ? Icons.bookmark : Icons.bookmark_border,
              color: _isActive ? Colors.deepOrange : Colors.black,
            ),
          )
        : Container();
  }
}
