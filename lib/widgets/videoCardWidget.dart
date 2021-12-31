import 'package:flutter/material.dart';
import 'package:youtube_golden/models/videoModel.dart';
import 'package:youtube_golden/screens/videoDetails.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({
    Key? key,
    required this.video,
  }) : super(key: key);

  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => VideoDetails(video: video),
        ),
      ),
      child: Container(
        width: double.infinity,
        child: Card(
          child: Column(
            children: [
              ThumbnailWidget(),
              SelectableText(
                video.name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "${video.creationDate.toLocal()} - From: ${video.domain}",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
