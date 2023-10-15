import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/features/sports/domain/entities/avaliable_days.dart';
import '/features/sports/presentation/widgets/sport_item.dart';

class DaysSection extends StatelessWidget {
  final AvaliableDays avaliableDays;

  const DaysSection({
    Key? key,
    required this.avaliableDays,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Text(
              avaliableDays.day ?? S.current.noData,
              style: large.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          avaliableDays.items != null
              ? avaliableDays.items!.isNotEmpty
                  ? ListView.builder(
                      padding: EdgeInsets.only(bottom: 10.h),
                      shrinkWrap: true,
                      primary: false,
                      itemCount: avaliableDays.items!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SportItem(
                          avaliableSport: avaliableDays.items![index],
                        );
                      },
                    )
                  : Text(
                      S.current.noGames,
                      style: large,
                    )
              : Text(
                  S.current.noGames,
                  style: large,
                ),
        ],
      ),
    );
  }
}
