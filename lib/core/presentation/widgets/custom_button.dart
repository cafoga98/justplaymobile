import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? colorTitle;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.colorTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Center(
        child: SizedBox(
          height: 30.h,
          width: MediaQuery.of(context).size.width / 2.5,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: backgroundColor ?? ColorsRepository.goldenPoppy,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: medium.copyWith(
                color: colorTitle ?? ColorsRepository.realBlue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
