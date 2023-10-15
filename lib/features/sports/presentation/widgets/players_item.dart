import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/features/sports/domain/entities/host.dart';

class PlayersItem extends StatelessWidget {
  final Host player;
  final int index;

  const PlayersItem({
    Key? key,
    required this.player,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      child: findOrderByIndex(context),
    );
  }

  Widget findOrderByIndex(BuildContext context) {
    if (index.isEven) {
      //if index is Even
      return leftWidget(context);
    } else {
      //if index is Odd
      return rightWidget(context);
    }
  }

  Widget rightWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                player.name!,
                maxLines: 2,
                style: medium.copyWith(
                  color: ColorsRepository.realBlue,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(player.profileImage!),
            ),
          ),
        ),
      ],
    );
  }

  Widget leftWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(player.profileImage!),
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        SizedBox(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                player.name!,
                maxLines: 2,
                style: medium.copyWith(
                  color: ColorsRepository.realBlue,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
