import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/features/sports/domain/entities/avaliable_sport.dart';
import '/features/sports/presentation/widgets/players_item.dart';
import '/features/sports/presentation/widgets/amenities_item.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  final AvaliableSport avaliableSport;

  const DetailPage({
    Key? key,
    required this.avaliableSport,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late List<Widget> sliders;

  @override
  void initState() {
    sliders = widget.avaliableSport.carousel!
        .map(
          (item) => Image.network(
            item,
            fit: BoxFit.cover,
          ),
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width,
            ),
            child: FlutterCarousel(
              options: CarouselOptions(
                showIndicator: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                disableCenter: true,
                viewportFraction: deviceSize.width > 800 ? 0.8 : 1.0,
                height: deviceSize.height * 0.38,
                indicatorMargin: 12.0,
                enableInfiniteScroll: true,
                slideIndicator: const CircularSlideIndicator(),
              ),
              items: sliders,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230.h),
            padding: EdgeInsets.all(15.h),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //region Info
                  Text(
                    widget.avaliableSport.eventTitle ?? S.current.noData,
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
                                  widget.avaliableSport.address ??
                                      S.current.noData,
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
                                  widget.avaliableSport.duration ??
                                      S.current.noData,
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
                          '\$ ${widget.avaliableSport.price ?? S.current.noData}',
                          style: medium.copyWith(
                              color: ColorsRepository.realBlue,
                              fontSize: 20.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //endregion
                  //region Description
                  Text(
                    'Description',
                    style: large.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    widget.avaliableSport.description ?? S.current.noData,
                    textAlign: TextAlign.justify,
                    style: medium.copyWith(
                      fontWeight: FontWeight.normal,
                      height: 1.1,
                      color: ColorsRepository.realBlue,
                    ),
                  ),
                  //endregion
                  //region Amenities
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Amenities',
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
                      itemCount: widget.avaliableSport.amenities!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AmenitiesItem(
                          amenity: widget.avaliableSport.amenities![index],
                        );
                      },
                    ),
                  ),
                  //endregion
                  //region Players
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Who\'s Playing',
                    style: large.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: widget.avaliableSport.amenities!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PlayersItem(
                        player: widget.avaliableSport.players![index],
                        index: index,
                      );
                    },
                  ),
                  //endregion
                  //region Recommendations
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Recommendations',
                    style: large.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: widget.avaliableSport.recommendations!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        '• ${widget.avaliableSport.recommendations?[index] ?? S.current.noData}',
                        textAlign: TextAlign.justify,
                        style: medium.copyWith(
                          fontWeight: FontWeight.normal,
                          color: ColorsRepository.realBlue,
                        ),
                      );
                    },
                  ),
                  //endregion
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
