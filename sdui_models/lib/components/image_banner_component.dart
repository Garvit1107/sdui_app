import 'component_model.dart';

class ImageBannerComponent extends ComponentModel {
  final String imageUrl;

  ImageBannerComponent({required this.imageUrl});

  @override
  Map<String, dynamic> toJson() {
    return {'runtimeType': 'imageBanner', 'imageUrl': imageUrl};
  }
}
