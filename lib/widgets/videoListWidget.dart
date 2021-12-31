import 'package:flutter/material.dart';
import 'package:youtube_golden/models/videoModel.dart';
import 'package:youtube_golden/screens/videoDetails.dart';
import 'package:youtube_golden/widgets/thumbnailWidget.dart';

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
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        child: Card(
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        VideoDetails(video: this.videoList[index]),
                  ),
                ),
                child: Hero(
                  tag: this.videoList[index].id,
                  child: ThumbnailWidget(),
                ),
              ),
              SelectableText(
                this.videoList[index].name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "${this.videoList[index].domain} - ${this.videoList[index].creationDate.toLocal()}",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  deleteVideo() {
    print('deleteVideo');
  }
}
