import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/auto_route/router.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/shared/utils/images_reporitory.dart';
import '/core/presentation/widgets/loading_page.dart';
import '/features/login/presentation/widgets/form_login.dart';
import '/features/login/domain/bloc/login_bloc/login_bloc.dart';
import '/features/login/presentation/widgets/footer_login.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsRepository.realBlue,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) => state.maybeWhen(
            orElse: () {
              return null;
            },
            error: (e) {
              context.router.popForced();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.message ?? S.current.noData),
                ),
              );
            },
            loading: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return WillPopScope(
                    onWillPop: () => Future.value(false),
                    child: LoadingPage(
                      message: S.current.loadingLogin,
                    ),
                  );
                },
              );
              return null;
            },
            done: (message) {
              context.router.pop().whenComplete(() {
                context.router.replace(const CitiesRoute());
              });
              return null;
            }),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageRepository.loginHeader,
                        ),
                      ),
                    ),
                  ),
                  const FormLogin(),
                  const FooterLogin(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
