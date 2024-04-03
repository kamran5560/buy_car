import '../../res/assets/image_assets.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: ImageAssets.group3,
      title: 'Welcome to our Car \n Buying platform!',
      discription: "Sell stuff easily! Turn your things into money. "
  ),
  UnbordingContent(
      image: ImageAssets.group2,
      title: 'Welcome to our Car \n Buying platform!',
      discription: "Trust us for safe deals. Your safety matters most. "
  ),
  UnbordingContent(
      image: ImageAssets.group1,
      title: 'Welcome to our Car \n Buying platform!',
      discription: "Shop worry-free here. Find what you need with confidence. "
  ),


];