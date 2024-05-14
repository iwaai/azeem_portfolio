class Project{
  final String title;
  final String shortDescription;
  final String longDescription;
  final String coverImage;
  final List<String> images;
  final String? url;
  final bool isWeb;
  Project({required this.title, required this.shortDescription, required this.longDescription, required this.coverImage, required this.images, this.url, this.isWeb = false});
}