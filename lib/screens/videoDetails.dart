import 'package:flutter/material.dart';
import 'package:youtube_golden/models/videoModel.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({Key? key, required this.video}) : super(key: key);
  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(tag: this.video.id, child: ThumbnailWidget()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop()),
    );
  }
}
