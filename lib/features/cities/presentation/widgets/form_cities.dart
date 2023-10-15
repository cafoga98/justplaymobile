import 'package:auto_route/auto_route.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/auto_route/router.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/presentation/widgets/custom_button.dart';

class FormCities extends StatefulWidget {
  const FormCities({Key? key}) : super(key: key);

  @override
  State<FormCities> createState() => _FormCitiesState();
}

class _FormCitiesState extends State<FormCities> {
  late String countryValue;
  late String stateValue;
  late String cityValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.current.yourLocation,
            style: extraLarge,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(15.w),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: SelectState(
              style: medium.copyWith(
                color: ColorsRepository.realBlue,
              ),
              onCountryChanged: (value) {
                setState(() {
                  countryValue = value;
                });
              },
              onStateChanged: (value) {
                setState(() {
                  stateValue = value;
                });
              },
              onCityChanged: (value) {
                setState(() {
                  cityValue = value;
                });
              },
            ),
          ),
          CustomButton(
            title: S.current.start,
            colorTitle: Colors.white,
            backgroundColor: ColorsRepository.coralRed,
            onPressed: () {
              context.router.push(const SportRoute());
            },
          )
        ],
      ),
    );
  }
}
