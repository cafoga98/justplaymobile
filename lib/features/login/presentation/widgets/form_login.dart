import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/style_repository.dart';
import '/core/shared/utils/colors_repository.dart';
import '/core/presentation/widgets/custom_button.dart';
import '/features/login/domain/bloc/login_bloc/login_bloc.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  String? username = '';
  String? password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.login,
              style: extraLarge,
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              style: medium.copyWith(color: ColorsRepository.realBlue),
              decoration:
                  inputTextFormField.copyWith(hintText: S.current.email),
              validator: (data) {
                if (data == null || data!.isEmpty) {
                  return S.current.mandatoryField;
                }
                return null;
              },
              onSaved: (data) {
                username = data;
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              obscureText: true,
              style: medium.copyWith(color: ColorsRepository.realBlue),
              decoration:
                  inputTextFormField.copyWith(hintText: S.current.password),
              onSaved: (data) {
                password = data;
              },
              validator: (data) {
                if (data == null || data!.isEmpty) {
                  return S.current.mandatoryField;
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    S.current.forgotPassword,
                    textAlign: TextAlign.end,
                    style: small.copyWith(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            CustomButton(
              title: S.current.login,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  context.read<LoginBloc>().add(
                        LoginEvent.started(
                          userName: username!,
                          password: password!,
                        ),
                      );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
