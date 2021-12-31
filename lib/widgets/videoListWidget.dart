import 'package:flutter/material.dart';
import 'package:youtube_golden/models/videoModel.dart';
import 'package:youtube_golden/screens/videoDetails.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';
import 'package:youtube_golden/widgets/videoCardWidget.dart';

class VideoListWidget extends StatefulWidget {
  const VideoListWidget({Key? key}) : super(key: key);

  @override
  State<VideoListWidget> createState() => _VideoListWidgetState();
}

class _VideoListWidgetState extends State<VideoListWidget> {
  final List<VideoModel> videoList = List.generate(
      1000,
      (index) => VideoModel(
          id: index,
          name: "Video $index",
          url: "http://www.example.com/watch?id=$index",
          creationDate: DateTime.now().add(Duration(days: index)),
          domain: "Example domain"));

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: this.videoList.length,
      cacheExtent: 20,
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) => VideoCardWidget(
        video: this.videoList[index],
      ),
    );
  }

  deleteVideo() {
    print('deleteVideo');
  }
}
