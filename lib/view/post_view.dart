import 'package:flutter/material.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/theme/icons.dart';
import 'package:interview/view_models/post_view_model.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> with TickerProviderStateMixin {
  late TabController tabController;
  late ScrollController controller;

  @override
  void initState() {
    final int length = context.read<PostViewModel>().post.media.length;

    tabController = TabController(
      vsync: this,
      length: length,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PostViewModel model = context.watch<PostViewModel>();
    final Post post = model.post;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                GestureDetector(
                  child: TabBarView(
                    controller: tabController,
                    children: post.media
                        .map(
                          (media) => Image.network(
                            media.url,
                            fit: BoxFit.cover,
                            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Colors.black,
                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
                  onDoubleTap: model.setIsTapped,
                ),
                if (model.isTapped == true)
                  const Image(
                    image: heartFilledIcon,
                    color: Colors.pink,
                    width: 75,
                  ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: SizedBox(
                    height: 65.0,
                    child: Row(
                      children: <Widget>[
                        CustomCircleAvatar(
                          post.author.photoUrl,
                        ),
                        AvatarLabel(
                          username: post.author.username,
                          fullName: post.author.fullName,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: SizedBox(
                    height: 65.0,
                    child: Row(
                      children: <Widget>[
                        LocationLogo(
                          post.spot.logo.url,
                        ),
                        LocationLabel(
                          spotName: post.spot.name,
                          typeName: post.spot.types.first.name,
                          locationName: post.spot.location.display,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 24,
                  top: 24,
                  child: Image(
                    image: model.getOptionsIcon(),
                    color: Colors.white,
                    width: 32,
                  ),
                ),
                Positioned(
                  bottom: 28,
                  right: 24,
                  child: GestureDetector(
                    child: Image(
                      image: model.isSaved ? model.getStarFilledIcon() : model.getStarIcon(),
                      color: Colors.white,
                      width: 28,
                    ),
                    onTap: model.setIsSaved,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image(
                  image: model.getMapIcon(),
                  width: 24,
                ),
                Image(
                  image: model.getCommentIcon(),
                  width: 24,
                ),
                GestureDetector(
                  child: Image(
                    image: model.isLiked ? model.getHeartFilledIcon() : model.getHeartIcon(),
                    color: model.isLiked ? Colors.red : null,
                    width: 24,
                  ),
                  onTap: model.setIsLiked,
                ),
                Image(
                  image: model.getSendIcon(),
                  width: 24,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              post.author.username,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ReadMoreText(
              post.description,
              trimLines: 2,
              trimMode: TrimMode.Line,
              style: const TextStyle(color: Colors.black),
              lessStyle: const TextStyle(color: Colors.grey),
              moreStyle: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 35),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                children: post.tags.map((model) => TagCard(name: model.name)).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              DateTime.now().difference(DateTime.parse(post.createdAt)).inDays.toString() + ' days ago',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black12.withOpacity(0.3),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TagCard extends StatelessWidget {
  const TagCard({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink,
            Colors.pinkAccent,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}

class AvatarLabel extends StatelessWidget {
  const AvatarLabel({
    Key? key,
    required this.username,
    required this.fullName,
  }) : super(key: key);

  final String username;
  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            username,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            fullName,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class LocationLogo extends StatelessWidget {
  const LocationLogo(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white60),
        borderRadius: const BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white60),
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}

class LocationLabel extends StatelessWidget {
  const LocationLabel({
    Key? key,
    required this.spotName,
    required this.typeName,
    required this.locationName,
  }) : super(key: key);

  final String spotName;
  final String typeName;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            spotName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              Text(
                typeName,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(
                  Icons.circle,
                  size: 4,
                  color: Colors.white.withOpacity(0.85),
                ),
              ),
              Text(
                locationName,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
