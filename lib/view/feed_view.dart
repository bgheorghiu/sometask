import 'package:flutter/material.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/view/providers.dart';
import 'package:provider/provider.dart';

class FeedView extends StatelessWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Post>? posts = context.watch<List<Post>?>();
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
            child: posts != null
                ? ListView(
                    physics: const BouncingScrollPhysics(),
                    children: posts.map((post) => PostProvider(post)).toList(),
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
