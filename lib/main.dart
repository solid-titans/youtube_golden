import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
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
              'images/youtube-golden-logo-15.png',
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
      body: SafeArea(
        child: Card(
          child: Text("Video"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Downloaded Files',
        child: Icon(
          Icons.cloud_download,
          color: Colors.white,
        ),
      ),
    );
  }
}
