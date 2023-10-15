import '/core/shared/utils/images_reporitory.dart';

class AmenitiesType {
  final String amenity;

  AmenitiesType({
    required this.amenity,
  });

  String getType() {
    switch (amenity) {
      case 'parking':
        return ImageRepository.amenitiesParking;
      case 'food store':
        return ImageRepository.amenitiesFoodStore;
      case 'wifi':
        return ImageRepository.amenitiesWifi;
      default:
        return ImageRepository.amenitiesHydration;
    }
  }
}
