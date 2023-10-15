import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/features/sports/presentation/widgets/amenities_item.dart';

class AmenitiesSection extends StatelessWidget {
  final List<String>? amenities;

  const AmenitiesSection({
    Key? key,
    required this.amenities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          S.current.amenities,
          style: large.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 55.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: amenities!.length,
            itemBuilder: (BuildContext context, int index) {
              return AmenitiesItem(
                amenity: amenities![index],
              );
            },
          ),
        ),
      ],
    );
  }
}
