import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:interview/models/feed_model.dart';

final getIt = GetIt.instance;

void initGetIt() {
  final Client client = Client();
  getIt.registerSingleton(FeedModel(client: client));
}
