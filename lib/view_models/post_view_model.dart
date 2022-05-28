import 'package:flutter/material.dart';
import 'package:interview/models/post_model.dart';
import 'package:interview/theme/icons.dart';

class PostViewModel with ChangeNotifier {
  PostViewModel({
    required this.post,
    this.isLiked = false,
    this.isSaved = false,
    this.isTapped = false,
  });

  Post post;

  bool isLiked;

  bool isSaved;

  bool isTapped;

  void setIsLiked() {
    isLiked = !isLiked;
    notifyListeners();
  }

  void setIsSaved() {
    isSaved = !isSaved;
    notifyListeners();
  }

  void setIsTapped() {
    if (isLiked == false) {
      isTapped = true;
      isLiked = true;
      notifyListeners();
      Future.delayed(const Duration(milliseconds: 1000), () {
        isTapped = false;
        notifyListeners();
      });
    } else {
      isLiked = false;
      notifyListeners();
    }
  }

  AssetImage getHeartIcon() {
    return heartIcon;
  }

  AssetImage getHeartFilledIcon() {
    return heartFilledIcon;
  }

  AssetImage getCommentIcon() {
    return commentIcon;
  }

  AssetImage getMapIcon() {
    return mapIcon;
  }

  AssetImage getOptionsIcon() {
    return optionsIcon;
  }

  AssetImage getSendIcon() {
    return sendIcon;
  }

  AssetImage getStarIcon() {
    return starIcon;
  }

  AssetImage getStarFilledIcon() {
    return starFilledIcon;
  }
}
