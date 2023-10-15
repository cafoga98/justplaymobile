import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/features/sports/domain/entities/host.dart';
import '/features/sports/domain/entities/avaliable_days.dart';
import '/features/sports/domain/entities/avaliable_sport.dart';
import '/features/sports/presentation/widgets/days_section.dart';

@RoutePage()
class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRepository.realBlue,
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.current.chooseGame,
                style: extraLarge.copyWith(
                  fontSize: 33.sp,
                  color: ColorsRepository.goldenPoppy,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: avaliableDaysList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DaysSection(
                      avaliableDays: avaliableDaysList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<AvaliableDays> avaliableDaysList = [avaliableDays1, avaliableDays2];

AvaliableDays avaliableDays1 = AvaliableDays(
    day: "Today", items: [avaliableSport, avaliableSport1, avaliableSport4]);
AvaliableDays avaliableDays2 = AvaliableDays(
    day: "Sunday", items: [avaliableSport3, avaliableSport4, avaliableSport]);
AvaliableSport avaliableSport = AvaliableSport(
    genrGame: "basketball",
    time: "6:20 p. m.",
    shortDescription: "OUTDOOR 7 vs 7 with Camilo.",
    carousel: [
      "https://picsum.photos/500",
      "https://picsum.photos/500",
      "https://picsum.photos/500"
    ],
    host: Host(
      name: "Michael Scott",
      profileImage: "https://picsum.photos/250?image=10",
    ),
    eventTitle: "Huntington Beach Sport Complex and Barvarian",
    address: "Cll 34 #42-43",
    duration: "60 min",
    price: "4.99",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets conta",
    amenities: ["parking", "wifi", "food store", "Hydration"],
    players: [
      Host(
        name: "Pepito Perez Gomez",
        profileImage: "https://picsum.photos/250?image=290",
      ),
      Host(
        name: "John Smith",
        profileImage: "https://picsum.photos/250?image=20",
      ),
      Host(
        name: "Emily Johnson",
        profileImage: "https://picsum.photos/250?image=30",
      ),
      Host(
        name: "Michael Brown",
        profileImage: "https://picsum.photos/250?image=40",
      ),
    ],
    maxPlayers: "4/10",
    recommendations: [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ]);
AvaliableSport avaliableSport1 = AvaliableSport(
    genrGame: "soccer",
    time: "6:20 p. m.",
    shortDescription: "OUTDOOR 7 vs 7 with Camilo.",
    carousel: [
      "https://picsum.photos/500",
      "https://picsum.photos/500",
      "https://picsum.photos/500"
    ],
    host: Host(
      name: "Michael Scott",
      profileImage: "https://picsum.photos/250?image=10",
    ),
    eventTitle: "Huntington Beach Sport Complex and Barvarian",
    address: "Cll 34 #42-43",
    duration: "60 min",
    price: "4.99",
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets conta",
    amenities: ["parking", "wifi", "food store", "Hydration"],
    players: [
      Host(
        name: "Pepito Perez Gomez",
        profileImage: "https://picsum.photos/250?image=290",
      ),
      Host(
        name: "John Smith",
        profileImage: "https://picsum.photos/250?image=20",
      ),
      Host(
        name: "Emily Johnson",
        profileImage: "https://picsum.photos/250?image=30",
      ),
      Host(
        name: "Michael Brown",
        profileImage: "https://picsum.photos/250?image=40",
      ),
    ],
    maxPlayers: "4/10",
    recommendations: [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ]);
AvaliableSport avaliableSport3 = AvaliableSport(
    genrGame: "cycling",
    time: "6:20 p. m.",
    shortDescription: "OUTDOOR 7 vs 7 with Camilo.",
    carousel: [
      "https://picsum.photos/500",
      "https://picsum.photos/500",
      "https://picsum.photos/500"
    ],
    host: Host(
      name: "Michael Scott",
      profileImage: "https://picsum.photos/250?image=10",
    ),
    eventTitle: "Huntington Beach Sport Complex and Barvarian",
    address: "Cll 34 #42-43",
    duration: "60 min",
    price: "4.99",
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets conta",
    amenities: ["parking", "wifi", "food store", "Hydration"],
    players: [
      Host(
        name: "Pepito Perez Gomez",
        profileImage: "https://picsum.photos/250?image=290",
      ),
      Host(
        name: "John Smith",
        profileImage: "https://picsum.photos/250?image=20",
      ),
      Host(
        name: "Emily Johnson",
        profileImage: "https://picsum.photos/250?image=30",
      ),
      Host(
        name: "Michael Brown",
        profileImage: "https://picsum.photos/250?image=40",
      ),
    ],
    maxPlayers: "4/10",
    recommendations: [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ]);
AvaliableSport avaliableSport4 = AvaliableSport(
    genrGame: "skate",
    time: "6:20 p. m.",
    shortDescription: "OUTDOOR 7 vs 7 with Camilo.",
    carousel: [
      "https://picsum.photos/500",
      "https://picsum.photos/500",
      "https://picsum.photos/500"
    ],
    host: Host(
      name: "Michael Scott",
      profileImage: "https://picsum.photos/250?image=10",
    ),
    eventTitle: "Huntington Beach Sport Complex and Barvarian",
    address: "Cll 34 #42-43",
    duration: "60 min",
    price: "4.99",
    description:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularized in the 1960s with the release of Letraset sheets conta",
    amenities: ["parking", "wifi", "food store", "Hydration"],
    players: [
      Host(
        name: "Pepito Perez Gomez",
        profileImage: "https://picsum.photos/250?image=290",
      ),
      Host(
        name: "John Smith",
        profileImage: "https://picsum.photos/250?image=20",
      ),
      Host(
        name: "Emily Johnson",
        profileImage: "https://picsum.photos/250?image=30",
      ),
      Host(
        name: "Michael Brown",
        profileImage: "https://picsum.photos/250?image=40",
      ),
    ],
    maxPlayers: "4/10",
    recommendations: [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ]);
