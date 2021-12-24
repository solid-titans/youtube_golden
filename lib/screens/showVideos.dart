import 'package:flutter/material.dart';

class ShowVideos extends StatefulWidget {
  const ShowVideos({Key? key}) : super(key: key);
  static const routeName = 'screens/showVideos';

  @override
  _ShowVideosState createState() => _ShowVideosState();
}

class _ShowVideosState extends State<ShowVideos> {
  final _globalKey = GlobalKey<FormState>();
  var _formValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: Column(
        children: [
          TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.url,
              validator: (value) =>
                  value!.isEmpty ? 'You need to specify a link' : null,
              onSaved: (link) => _formValues['link'] = link,
              decoration: InputDecoration(
                  labelText: 'Video Link:', border: OutlineInputBorder())),
          SingleChildScrollView(
            child: Column(
              children: [buildingDownloadedVideos()],
            ),
          )
        ],
      ),
    );
  }

  ListView buildingDownloadedVideos() =>
      ListView.builder(itemBuilder: (item, index) {
        var videoName = 'Video Name';
        var videoUrl = 'Video Url';
        var thumbnail = AssetImage('Path to thumbnail');

        return Card(
          child: Column(
            children: [
              ListTile(title: Text(videoName), subtitle: Text(videoUrl)),
              Container(
                height: 50,
                child: Ink.image(
                  image: thumbnail,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
              )
            ],
          ),
        );
      });
}
