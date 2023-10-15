import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/features/sports/presentation/widgets/amenities_type.dart';

class AmenitiesItem extends StatelessWidget {
  final String amenity;

  const AmenitiesItem({
    Key? key,
    required this.amenity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Image.asset(
        AmenitiesType(amenity: amenity).getType(),
      ),
    );
  }
}
