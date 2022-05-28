import 'package:flutter/material.dart';
import 'package:interview/init/init.dart';
import 'package:interview/view/feed_view.dart';
import 'package:interview/view/providers.dart';

Future<void> main() async {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedProvider(
        child: PostsProvider(
          child: FeedView(),
        ),
      ),
    );
  }
}
