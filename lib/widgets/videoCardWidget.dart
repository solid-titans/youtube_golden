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
    return Container(
      width: double.infinity,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => VideoDetails(video: video),
          ),
        ),
        child: Card(
          child: Column(
            children: [
              Hero(tag: video.id, child: ThumbnailWidget()),
              Text(
                video.name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
