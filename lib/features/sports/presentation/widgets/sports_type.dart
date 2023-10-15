import '/core/shared/utils/images_reporitory.dart';

class SportType {
  final String? type;

  SportType({required this.type});

  String getIcon() {
    switch (type) {
      case 'basketball':
        return ImageRepository.humansBasketball;
      case 'skate':
        return ImageRepository.humansSkate;
      case 'cycling':
        return ImageRepository.humansBicycle;
      default:
        return ImageRepository.humansSoccer;
    }
  }
}
