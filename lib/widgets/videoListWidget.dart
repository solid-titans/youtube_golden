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
          name: "Video $index",
          url: "http://www.example.com/watch?id=$index",
          creationDate: DateTime.now().add(Duration(days: index)),
          domain: "Example domain"));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.video.length,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RefreshProgressIndicator(
                  value: null,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    this.video[index].name,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    "${this.video[index].domain} - ${this.video[index].creationDate.toLocal()}",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
