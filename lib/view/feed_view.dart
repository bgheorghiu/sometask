import 'package:flutter/material.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/view/providers.dart';
import 'package:interview/view_models/feed_view_model.dart';
import 'package:provider/provider.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    final FeedViewModel model = context.watch<FeedViewModel>();
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'Feed Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: model.posts.isNotEmpty
                ? ListView(
                    controller: model.controller,
                    physics: const BouncingScrollPhysics(),
                    children: model.posts.map((post) => PostProvider(post)).toList(),
                  )
                : const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
