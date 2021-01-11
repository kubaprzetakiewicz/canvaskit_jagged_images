import 'package:flutter/material.dart';

void main() {
  runApp(ImageTestApp());
}

class ImageTestApp extends StatelessWidget {
  final isCanvasKit = const bool.fromEnvironment('FLUTTER_WEB_USE_SKIA', defaultValue: false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: isCanvasKit ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: <Widget>[
                Text(isCanvasKit ? 'CanvasKit' : 'HTML'),
                SizedBox(height: 20),
                Image(
                  image: AssetImage('images/sample2.png'),
                ),
                Image(
                  image: AssetImage('images/sample.png'),
                ),
                Image(
                  image: AssetImage('images/sample3.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
