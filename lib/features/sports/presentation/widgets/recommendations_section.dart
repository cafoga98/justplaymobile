import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:justplaymobile/core/shared/utils/colors_repository.dart';
import 'package:justplaymobile/core/shared/utils/style_repository.dart';
import 'package:justplaymobile/generated/l10n.dart';

class RecommendationSection extends StatelessWidget {
  final List<String>? recommendations;

  const RecommendationSection({
    Key? key,
    required this.recommendations,
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
          S.current.recommendation,
          style: large.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: recommendations!.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              '• ${recommendations?[index] ?? S.current.noData}',
              textAlign: TextAlign.justify,
              style: medium.copyWith(
                fontWeight: FontWeight.normal,
                color: ColorsRepository.realBlue,
              ),
            );
          },
        ),
      ],
    );
  }
}
