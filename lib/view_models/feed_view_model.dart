import 'package:flutter/cupertino.dart';
import 'package:interview/init/init.dart';
import 'package:interview/models/feed_model.dart';
import 'package:interview/models/post_model.dart';

class FeedViewModel with ChangeNotifier {
  FeedViewModel()
      : feedModel = getIt.get<FeedModel>(),
        controller = ScrollController() {
    getPosts();
    controller.addListener(_scrollListener);
  }

  int _page = 1;
  final ScrollController controller;
  List<Post> posts = [];

  final FeedModel feedModel;

  Future<void> getPosts() async {
    List<Post> data = await feedModel.getPosts(_page);
    posts.addAll(data);
    notifyListeners();
    _page++;
  }

  void _scrollListener() async {
    if (controller.position.pixels >= controller.position.maxScrollExtent * 0.7) {
      await getPosts();
    }
  }
}
