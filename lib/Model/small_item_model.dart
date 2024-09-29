import 'package:playvies/Model/image_slider_model.dart';

class ItemModel {
  final String title;
  final String imageUrl;

  ItemModel({required this.title, required this.imageUrl});

  static fromImageSliderModel(ImageSliderModel imageSlider) {}
}