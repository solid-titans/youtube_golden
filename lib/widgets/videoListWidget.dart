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
  final List<VideoModel> video = List.generate(
      1000,
      (index) => VideoModel(
          id: index,
          name: "Video $index",
          url: "http://www.example.com/watch?id=$index",
          creationDate: DateTime.now().add(Duration(days: index)),
          domain: "Example domain"));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.video.length,
      cacheExtent: 20,
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(tag: this.video[index].id, child: ThumbnailWidget()),
                  Positioned(
                    right: -10,
                    child: PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text("Details"),
                          onTap: () =>
                              showDetails(context, this.video[index].id),
                        ),
                        PopupMenuItem(
                          child: Text("Delete"),
                          onTap: deleteVideo,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SelectableText(
                this.video[index].name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "${this.video[index].domain} - ${this.video[index].creationDate.toLocal()}",
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDetails(context, int videoId) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => VideoDetails(
          videoId: videoId,
        ),
      ),
    );
  }

  deleteVideo() {
    print('deleteVideo');
  }
}
