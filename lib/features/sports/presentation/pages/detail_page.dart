import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/features/sports/domain/entities/avaliable_sport.dart';
import '/features/sports/presentation/widgets/players_section.dart';
import '/features/sports/presentation/widgets/amenities_section.dart';
import '/features/sports/presentation/widgets/information_section.dart';
import '/features/sports/presentation/widgets/recommendations_section.dart';

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
                children: [
                  InformationSection(
                    eventTitle: widget.avaliableSport.eventTitle,
                    address: widget.avaliableSport.address,
                    price: widget.avaliableSport.price,
                    description: widget.avaliableSport.description,
                    duration: widget.avaliableSport.duration,
                  ),
                  AmenitiesSection(
                    amenities: widget.avaliableSport.amenities,
                  ),
                  PlayersSection(
                    players: widget.avaliableSport.players,
                  ),
                  RecommendationSection(
                    recommendations: widget.avaliableSport.recommendations,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
