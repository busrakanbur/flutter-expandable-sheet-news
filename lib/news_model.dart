class NewsModelArticlesSource {
  String? id;
  String? name;

  NewsModelArticlesSource({
    required this.id,
    required this.name,
  });
  NewsModelArticlesSource.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class NewsModelArticles {
  NewsModelArticlesSource? source;
  late final String author;
  late final String title;
  late final String description;
  late final String url;
  late final String urlToImage;
  late final String publishedAt;
  late final String content;

  NewsModelArticles({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  NewsModelArticles.fromJson(Map<String, dynamic> json) {
    source = (json['source'] != null)
        ? NewsModelArticlesSource.fromJson(json['source'])
        : null;
    author = json['author'].toString();
    title = json['title'].toString();
    description = json['description'].toString();
    url = json['url'].toString();
    urlToImage = json['urlToImage'].toString();
    publishedAt = json['publishedAt'].toString();
    content = json['content'].toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (source != null) {
      data['source'] = source?.toJson();
    }
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}

class NewsModel {
  late final String status;
  late final int totalResults;
  late final List<NewsModelArticles> articles;

  NewsModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'].toString();
    totalResults = json['totalResults']?.toInt();
    if (json['articles'] != null) {
      final v = json['articles'];
      final arr0 = <NewsModelArticles>[];
      v.forEach((v) {
        arr0.add(NewsModelArticles.fromJson(v));
      });
      articles = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      final v = articles;
      final arr0 = [];
      v.forEach((v) {
        arr0.add(v.toJson());
      });
      data['articles'] = arr0;
    }
    return data;
  }
}
