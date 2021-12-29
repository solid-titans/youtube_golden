import 'package:flutter/material.dart';
import 'package:youtube_golden/models/videoModel.dart';

class VideoListWidget extends StatefulWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  State<VideoListWidget> createState() => _VideoListWidgetState();
}

class _VideoListWidgetState extends State<VideoListWidget> {
  final List<VideoModel> video = List.generate(
      1000,
      (index) => VideoModel(
          name: "Video ${index + 1}",
          url: "asdoasdopaksdopkasodkoaskdopaksdopkaopsdkoaskdop",
          creationDate: DateTime.now(),
          domain: "Youtube"));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.video.length,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.video[index].name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                this.video[index].url,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
