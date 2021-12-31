import 'package:flutter/material.dart';

class ThumbnailWidget extends StatelessWidget {
  const ThumbnailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        child: Icon(
          Icons.play_disabled,
          size: 50,
        ),
      ),
    );
  }
}
