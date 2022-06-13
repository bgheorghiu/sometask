import 'package:flutter/material.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/view/post_view.dart';
import 'package:interview/view_models/feed_view_model.dart';
import 'package:interview/view_models/post_view_model.dart';
import 'package:provider/provider.dart';

class PostProvider extends StatelessWidget {
  const PostProvider(this.post, {Key? key}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostViewModel(post: post),
      child: const PostView(),
    );
  }
}

class FeedProvider extends StatelessWidget {
  const FeedProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeedViewModel(),
      child: child,
    );
  }
}
