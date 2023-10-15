import '/core/shared/utils/images_reporitory.dart';

/// A class to represent a sport type.
class SportType {
  /// The type of the sport.
  final String? type;

  SportType({required this.type});

  /// Returns the icon for the sport type.
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