import 'package:flutter/material.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({Key? key, required this.videoId}) : super(key: key);
  final int videoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
      ),
      body: Hero(
        tag: this.videoId,
        child: ThumbnailWidget(),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => Navigator.of(context).pop()),
    );
  }
}
