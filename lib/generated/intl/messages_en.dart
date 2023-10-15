// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "amenities": MessageLookupByLibrary.simpleMessage("Amenities"),
        "chooseGame": MessageLookupByLibrary.simpleMessage(
            "Choose a pick-up game to play in"),
        "completeField": MessageLookupByLibrary.simpleMessage(
            "Please fill in the current address fields before adding a new one"),
        "deleteNoAllow":
            MessageLookupByLibrary.simpleMessage("Cannot delete this field"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot Password ?"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading"),
        "loadingLogin": MessageLookupByLibrary.simpleMessage(
            "Iniciando sesión, por favor espere un momento ..."),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "mandatoryField":
            MessageLookupByLibrary.simpleMessage("Mandatory field"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "noConnection":
            MessageLookupByLibrary.simpleMessage("No Internet conection"),
        "noData": MessageLookupByLibrary.simpleMessage("No Data"),
        "noGames": MessageLookupByLibrary.simpleMessage(
            "There are no games created for this day"),
        "noLaunch": MessageLookupByLibrary.simpleMessage("Could not launch"),
        "noSaveLocalData": MessageLookupByLibrary.simpleMessage(
            "Failed to save the information, please try again later"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "recommendation":
            MessageLookupByLibrary.simpleMessage("Recommendations"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "singUp": MessageLookupByLibrary.simpleMessage("Sing Up With"),
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "successfulRegistration":
            MessageLookupByLibrary.simpleMessage("Successful registration"),
        "timeOut": MessageLookupByLibrary.simpleMessage(
            "Problems connecting to the server"),
        "timeOutLocal": MessageLookupByLibrary.simpleMessage(
            "Problems connecting to internal database, please try again later"),
        "unauthorised": MessageLookupByLibrary.simpleMessage(
            "No authorization for application"),
        "whosPlaying": MessageLookupByLibrary.simpleMessage("Who\\\'s Playing"),
        "wrongCredentials":
            MessageLookupByLibrary.simpleMessage("Incorrect credentials"),
        "yourLocation": MessageLookupByLibrary.simpleMessage("Your location")
      };
}
