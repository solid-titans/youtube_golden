class VideoModel {
  final DateTime creationDate;
  final String name;
  final String url;
  final String domain;

  VideoModel(
      {required this.name,
      required this.url,
      required this.creationDate,
      required this.domain});
}
