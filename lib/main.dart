import 'package:flutter/material.dart';
import 'package:youtube_golden/video.dart';
import 'package:youtube_golden/widgets/videoListWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Golden',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                fontSize: 20,
              ),
              headline5: TextStyle(
                fontSize: 22.5,
                fontWeight: FontWeight.bold,
              ))),
      home: MyHomePage(title: 'Youtube Golden'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'images/youtube-golden-logo.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              "Golden",
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Text(
                    "Test",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: VideoListWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Downloaded Files',
        child: Icon(
          Icons.link,
          color: Colors.white,
        ),
      ),
    );
  }
}
