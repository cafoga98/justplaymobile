// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `No Internet conection`
  String get noConnection {
    return Intl.message(
      'No Internet conection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Problems connecting to the server`
  String get timeOut {
    return Intl.message(
      'Problems connecting to the server',
      name: 'timeOut',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `No authorization for application`
  String get unauthorised {
    return Intl.message(
      'No authorization for application',
      name: 'unauthorised',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the current address fields before adding a new one`
  String get completeField {
    return Intl.message(
      'Please fill in the current address fields before adding a new one',
      name: 'completeField',
      desc: '',
      args: [],
    );
  }

  /// `Cannot delete this field`
  String get deleteNoAllow {
    return Intl.message(
      'Cannot delete this field',
      name: 'deleteNoAllow',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save the information, please try again later`
  String get noSaveLocalData {
    return Intl.message(
      'Failed to save the information, please try again later',
      name: 'noSaveLocalData',
      desc: '',
      args: [],
    );
  }

  /// `Problems connecting to internal database, please try again later`
  String get timeOutLocal {
    return Intl.message(
      'Problems connecting to internal database, please try again later',
      name: 'timeOutLocal',
      desc: '',
      args: [],
    );
  }

  /// `Mandatory field`
  String get mandatoryField {
    return Intl.message(
      'Mandatory field',
      name: 'mandatoryField',
      desc: '',
      args: [],
    );
  }

  /// `Could not launch`
  String get noLaunch {
    return Intl.message(
      'Could not launch',
      name: 'noLaunch',
      desc: '',
      args: [],
    );
  }

  /// `Successful registration`
  String get successfulRegistration {
    return Intl.message(
      'Successful registration',
      name: 'successfulRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Sing Up With`
  String get singUp {
    return Intl.message(
      'Sing Up With',
      name: 'singUp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password ?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Your location`
  String get yourLocation {
    return Intl.message(
      'Your location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Choose a pick-up game to play in`
  String get chooseGame {
    return Intl.message(
      'Choose a pick-up game to play in',
      name: 'chooseGame',
      desc: '',
      args: [],
    );
  }

  /// `There are no games created for this day`
  String get noGames {
    return Intl.message(
      'There are no games created for this day',
      name: 'noGames',
      desc: '',
      args: [],
    );
  }

  /// `Amenities`
  String get amenities {
    return Intl.message(
      'Amenities',
      name: 'amenities',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Who\'s Playing`
  String get whosPlaying {
    return Intl.message(
      'Who\\\'s Playing',
      name: 'whosPlaying',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations`
  String get recommendation {
    return Intl.message(
      'Recommendations',
      name: 'recommendation',
      desc: '',
      args: [],
    );
  }

  /// `Iniciando sesión, por favor espere un momento ...`
  String get loadingLogin {
    return Intl.message(
      'Iniciando sesión, por favor espere un momento ...',
      name: 'loadingLogin',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect credentials`
  String get wrongCredentials {
    return Intl.message(
      'Incorrect credentials',
      name: 'wrongCredentials',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a valid city`
  String get validateCity {
    return Intl.message(
      'Please choose a valid city',
      name: 'validateCity',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
