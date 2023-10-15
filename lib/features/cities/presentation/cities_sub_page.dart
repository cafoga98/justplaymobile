import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/auto_route/router.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/shared/utils/images_reporitory.dart';
import '/core/presentation/widgets/loading_page.dart';
import '/features/cities/presentation/widgets/form_cities.dart';
import '/features/cities/domain/bloc/cities_bloc/cities_bloc.dart';

class CitiesSubPage extends StatelessWidget {
  const CitiesSubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRepository.limeGreen,
      body: BlocListener<CitiesBloc, CitiesState>(
        listener: (context, state) => state.maybeWhen(orElse: () {
          return null;
        }, isEmpty: () {
          /// if the CitiesState is isEmpty, the BlocListener will pop the current page and show a snackbar
          /// to the user.
          context.router.popForced();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.current.validateCity),
            ),
          );
          return null;
        }, error: (e) {
          ///If the CitiesState is error, the BlocListener will pop the current page and show
          /// a snackbar to the user with the error message.
          context.router.popForced();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.message ?? S.current.noData),
            ),
          );
          return null;
        }, loading: () {
          ///If the CitiesState is loading, the BlocListener will show a loading dialog to the user.
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
        }, done: (city) {
          ///if the CitiesState is done, the BlocListener will pop the current page and push a
          /// new page to the navigation stack.
          context.router.popForced();
          context.router.push(SportRoute(city: city));
          return null;
        }),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 350.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageRepository.headerCity,
                        ),
                      ),
                    ),
                  ),
                  const FormCities()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
