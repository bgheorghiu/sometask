import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:interview/models/post_model.dart';

class FeedModel with ChangeNotifier {
  FeedModel({required Client client}) : _client = client;

  final Client _client;

  Future<List<Post>> getPosts() async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'dev.api.spotlas.com',
      pathSegments: <String>['interview', 'feed'],
      queryParameters: <String, String>{
        'page': '1',
      },
    );
    final Response response = await _client.get(url);
    final List<dynamic> body = jsonDecode(response.body);

    return body.map((json) => Post.fromJson(json)).toList();
  }
}
