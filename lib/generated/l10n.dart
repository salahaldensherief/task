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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Create a new account`
  String get createAccount {
    return Intl.message(
      'Create a new account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get userName {
    return Intl.message('Username', name: 'userName', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm password`
  String get pleaseConfirmPassword {
    return Intl.message(
      'Please confirm password',
      name: 'pleaseConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign in to continue`
  String get signInToContinue {
    return Intl.message(
      'Sign in to continue',
      name: 'signInToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Search here ...`
  String get searchHere {
    return Intl.message(
      'Search here ...',
      name: 'searchHere',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestSeller {
    return Intl.message('Best Seller', name: 'bestSeller', desc: '', args: []);
  }

  /// `View All`
  String get viewAll {
    return Intl.message('View All', name: 'viewAll', desc: '', args: []);
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Text Editor`
  String get textEditor {
    return Intl.message('Text Editor', name: 'textEditor', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Call us`
  String get callUs {
    return Intl.message('Call us', name: 'callUs', desc: '', args: []);
  }

  /// `About us`
  String get aboutUs {
    return Intl.message('About us', name: 'aboutUs', desc: '', args: []);
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message('Sign Out', name: 'signOut', desc: '', args: []);
  }

  /// `Edit Account`
  String get editAccount {
    return Intl.message(
      'Edit Account',
      name: 'editAccount',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message('First name', name: 'firstName', desc: '', args: []);
  }

  /// `Last name`
  String get lastName {
    return Intl.message('Last name', name: 'lastName', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Failed to load products. Please try again`
  String get failedToLoadProducts {
    return Intl.message(
      'Failed to load products. Please try again',
      name: 'failedToLoadProducts',
      desc: '',
      args: [],
    );
  }

  /// `Default box, number 1`
  String get defaultBoxNumber1 {
    return Intl.message(
      'Default box, number 1',
      name: 'defaultBoxNumber1',
      desc: '',
      args: [],
    );
  }

  /// `Default box, number 2`
  String get defaultBoxNumber2 {
    return Intl.message(
      'Default box, number 2',
      name: 'defaultBoxNumber2',
      desc: '',
      args: [],
    );
  }

  /// `Default box, number 3`
  String get defaultBoxNumber3 {
    return Intl.message(
      'Default box, number 3',
      name: 'defaultBoxNumber3',
      desc: '',
      args: [],
    );
  }

  /// `Category 1`
  String get category1 {
    return Intl.message('Category 1', name: 'category1', desc: '', args: []);
  }

  /// `Category 2`
  String get category2 {
    return Intl.message('Category 2', name: 'category2', desc: '', args: []);
  }

  /// `Category 3`
  String get category3 {
    return Intl.message('Category 3', name: 'category3', desc: '', args: []);
  }

  /// `1000 L.E`
  String get price1000LE {
    return Intl.message('1000 L.E', name: 'price1000LE', desc: '', args: []);
  }

  /// `1200 L.E`
  String get price1200LE {
    return Intl.message('1200 L.E', name: 'price1200LE', desc: '', args: []);
  }

  /// `1500 L.E`
  String get price1500LE {
    return Intl.message('1500 L.E', name: 'price1500LE', desc: '', args: []);
  }

  /// `-20%`
  String get discount20 {
    return Intl.message('-20%', name: 'discount20', desc: '', args: []);
  }

  /// `-19%`
  String get discount19 {
    return Intl.message('-19%', name: 'discount19', desc: '', args: []);
  }

  /// `-17%`
  String get discount17 {
    return Intl.message('-17%', name: 'discount17', desc: '', args: []);
  }

  /// `words`
  String get words {
    return Intl.message('words', name: 'words', desc: '', args: []);
  }

  /// `start typing`
  String get startTyping {
    return Intl.message(
      'start typing',
      name: 'startTyping',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message('Contact us', name: 'contactUs', desc: '', args: []);
  }

  /// `Profile info updated!`
  String get profileInfoUpdated {
    return Intl.message(
      'Profile info updated!',
      name: 'profileInfoUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get chooseLanguage {
    return Intl.message(
      'Choose Language',
      name: 'chooseLanguage',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
