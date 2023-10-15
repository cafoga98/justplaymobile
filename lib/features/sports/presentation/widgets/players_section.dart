import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/features/sports/domain/entities/host.dart';
import '/features/sports/presentation/widgets/players_item.dart';

class PlayersSection extends StatelessWidget {
  final List<Host>? players;
  const PlayersSection({Key? key, required this.players}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          S.current.whosPlaying,
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
          itemCount: players!.length,
          itemBuilder: (BuildContext context, int index) {
            return PlayersItem(
              player: players![index],
              index: index,
            );
          },
        ),
      ],
    );
  }
}
