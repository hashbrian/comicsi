import 'package:flutter/material.dart';
import 'package:downshop/gdg/Comicscreate.dart';
class ComicPage extends StatelessWidget {
  final Comic comic;

  ComicPage(this.comic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comic.title, style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Text(comic.description),
                  SizedBox(height: 20),
                  Text(comic.price),
                  SizedBox(height: 8),
                  Container(
                    height: 630,
                    child: PageView.builder(
                      itemCount: comic.images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.network(
                            comic.images[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
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
}