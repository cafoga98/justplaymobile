import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/shared/utils/style_repository.dart';

class LoadingPage extends StatelessWidget {
  final String? message;

  const LoadingPage({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white54,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.h,
            width: 80.h,
            child: const CircularProgressIndicator(
              strokeWidth: 10,
              color: ColorsRepository.goldenPoppy,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            message ?? S.current.loadingInformation,
            textAlign: TextAlign.center,
            style: extraLarge.copyWith(shadows: [
              const BoxShadow(
                offset: Offset(1, 1),
                spreadRadius: 10,
                blurRadius: 10,
                color: ColorsRepository.realBlue,
              ),
              const BoxShadow(
                offset: Offset(2, 2),
                spreadRadius: 10,
                blurRadius: 20,
                color: ColorsRepository.goldenPoppy,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
