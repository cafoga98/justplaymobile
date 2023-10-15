import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';

class InformationSection extends StatelessWidget {
  final String? eventTitle;
  final String? address;
  final String? price;
  final String? description;
  final String? duration;

  const InformationSection({
    Key? key,
    required this.eventTitle,
    required this.address,
    required this.price,
    required this.description,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eventTitle ?? S.current.noData,
          style: large.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: ColorsRepository.coralRed,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        address ?? S.current.noData,
                        style: medium.copyWith(
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: ColorsRepository.realBlue,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        duration ?? S.current.noData,
                        style: medium.copyWith(
                          fontWeight: FontWeight.normal,
                          color: ColorsRepository.realBlue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                '\$ ${price ?? S.current.noData}',
                style: medium.copyWith(
                    color: ColorsRepository.realBlue, fontSize: 20.sp),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          S.current.description,
          style: large.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          description ?? S.current.noData,
          textAlign: TextAlign.justify,
          style: medium.copyWith(
            fontWeight: FontWeight.normal,
            height: 1.1,
            color: ColorsRepository.realBlue,
          ),
        ),
      ],
    );
  }
}
