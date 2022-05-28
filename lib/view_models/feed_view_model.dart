import 'package:flutter/cupertino.dart';
import 'package:interview/init/init.dart';
import 'package:interview/models/feed_model.dart';
import 'package:interview/models/post_model.dart';

class FeedViewModel with ChangeNotifier {
  FeedViewModel() : feedModel = getIt.get<FeedModel>();

  final FeedModel feedModel;

  Future<List<Post>> getPosts() async {
    return await feedModel.getPosts();
  }
}
