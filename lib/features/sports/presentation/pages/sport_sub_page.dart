import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/auto_route/router.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/presentation/widgets/loading_page.dart';
import '/features/sports/presentation/widgets/days_section.dart';
import '/features/sports/domain/bloc/sports_bloc/sports_bloc.dart';

class SportSubPage extends StatelessWidget {
  final String city;

  const SportSubPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRepository.realBlue,
      appBar: AppBar(
        title: Text(
          '$city ${S.current.city}',
          style: medium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.router.replaceAll([const LoginRoute()]);
            },
            icon: const Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      body: BlocListener<SportsBloc, SportsState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () {
            context.router.popForced();
            return null;
          },
          initial: () {
            return null;
          },
          loading: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return WillPopScope(
                  onWillPop: () => Future.value(false),
                  child: const LoadingPage(),
                );
              },
            );
            return null;
          },
          error: (e) {
            context.router.popForced();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(e.message ?? S.current.noData),
              ),
            );
            return null;
          },
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
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
                BlocBuilder<SportsBloc, SportsState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () {
                      return const Center(child: Text("No hay data"));
                    },
                    done: (avaliableSports) {
                      if (avaliableSports != null ||
                          avaliableSports!.isNotEmpty) {
                        return Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            primary: true,
                            itemCount: avaliableSports!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DaysSection(
                                avaliableDays: avaliableSports![index],
                              );
                            },
                          ),
                        );
                      } else {
                        return const Center(child: Text("No hay data"));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
