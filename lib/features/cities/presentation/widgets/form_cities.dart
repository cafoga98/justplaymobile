import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/presentation/widgets/custom_button.dart';
import '/features/cities/domain/bloc/cities_bloc/cities_bloc.dart';

/// FormCities Class
///
/// Represents a form for selecting and inputting location information, including
/// country, state, and city. This form allows users to specify their location.
///
/// Example usage:
///
/// ```dart
/// final form = FormCities();
/// ```
class FormCities extends StatefulWidget {
  const FormCities({Key? key}) : super(key: key);

  @override
  State<FormCities> createState() => _FormCitiesState();
}

class _FormCitiesState extends State<FormCities> {
  String countryValue = '';
  String stateValue = '';
  String cityValue = '';

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
              context
                  .read<CitiesBloc>()
                  .add(CitiesEvent.started(city: cityValue));
            },
          )
        ],
      ),
    );
  }
}
