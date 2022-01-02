import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_golden/models/videoModel.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({Key? key, required this.video}) : super(key: key);
  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: this.video, child: ThumbnailWidget()),
            SelectableText(
              video.name,
              style: Theme.of(context).textTheme.headline2,
            ),
            SelectableText('URL: ${video.url}'),
            SelectableText(
              'Download date: ${DateFormat.yMd().format(video.creationDate)}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop()),
    );
  }
}
