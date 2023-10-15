import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/features/sports/domain/entities/avaliable_sport.dart';
import '/features/sports/presentation/widgets/sports_type.dart';

class SportItem extends StatelessWidget {
  final AvaliableSport avaliableSport;

  const SportItem({
    Key? key,
    required this.avaliableSport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 20.h,
        ),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 100.h,
                  width: MediaQuery.of(context).size.width / 1.3,
                  padding: EdgeInsets.only(
                    top: 8.h,
                    left: 45.w,
                    right: 10.w,
                  ),
                  decoration: const BoxDecoration(
                    color: ColorsRepository.platinum,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        avaliableSport.eventTitle ?? S.current.noData,
                        maxLines: 2,
                        style: medium.copyWith(
                          color: ColorsRepository.realBlue,
                          height: 1,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.supervised_user_circle,
                            size: 15.h,
                          ),
                          Text(
                            avaliableSport.maxPlayers ?? S.current.noData,
                            style: small.copyWith(
                              color: ColorsRepository.realBlue,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Icon(
                            Icons.currency_bitcoin,
                            size: 15.h,
                          ),
                          Text(
                            avaliableSport.price ?? S.current.noData,
                            style: small.copyWith(
                              color: ColorsRepository.realBlue,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        avaliableSport.shortDescription ?? S.current.noData,
                        style: small.copyWith(
                          color: ColorsRepository.realBlue,
                          height: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            avaliableSport.time ?? S.current.noData,
                            style: small.copyWith(
                              color: ColorsRepository.realBlue,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 85.h,
              width: 85.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRepository.realBlue,
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: ),
              height: 73.h,
              width: 73.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRepository.goldenPoppy,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12.h),
              child: Image.asset(
                SportType(type: avaliableSport.genrGame).getIcon(),
                height: 80.h,
                width: 80.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
