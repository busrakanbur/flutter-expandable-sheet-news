import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'news_model.dart';
import 'news_service.dart';

class HomeController extends GetxController {
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  var expansionStatus = ExpansionStatus.contracted.obs;

  var isLoading = true.obs;
  //var newsList = <NewsModelArticles>[].obs;
  RxList<NewsModelArticles> newsList = <NewsModelArticles>[].obs;

  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  void getNews() async {
    try {
      isLoading(true);
      var news = await NewsService.getNews();
      if (news != null) {
        newsList.value = news.articles;
      } else {
        print("news -> null");
      }
    } finally {
      isLoading(false);
    }
  }
}
