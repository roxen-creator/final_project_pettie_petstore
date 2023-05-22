// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCdV-i2SUVUs_1XwfnZSHL4qcmvHfGnvPs',
    appId: '1:722909826082:web:bbebc8bfb7caacc3ec4e7b',
    messagingSenderId: '722909826082',
    projectId: 'pettie-4b152',
    authDomain: 'pettie-4b152.firebaseapp.com',
    storageBucket: 'pettie-4b152.appspot.com',
    measurementId: 'G-KZFWRG4W0D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWghiYSi1yeSPk55DoqNhMHeLKQk0Ua3k',
    appId: '1:722909826082:android:551ddca4d236a682ec4e7b',
    messagingSenderId: '722909826082',
    projectId: 'pettie-4b152',
    storageBucket: 'pettie-4b152.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6GiJUi4MKP-1kHJPtHKqeId70bDk296Y',
    appId: '1:722909826082:ios:e97c3ce0d531adbdec4e7b',
    messagingSenderId: '722909826082',
    projectId: 'pettie-4b152',
    storageBucket: 'pettie-4b152.appspot.com',
    iosClientId: '722909826082-q6trf9ibaut77foqqp9p48lilgg91mli.apps.googleusercontent.com',
    iosBundleId: 'com.example.pettiePetstore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6GiJUi4MKP-1kHJPtHKqeId70bDk296Y',
    appId: '1:722909826082:ios:e97c3ce0d531adbdec4e7b',
    messagingSenderId: '722909826082',
    projectId: 'pettie-4b152',
    storageBucket: 'pettie-4b152.appspot.com',
    iosClientId: '722909826082-q6trf9ibaut77foqqp9p48lilgg91mli.apps.googleusercontent.com',
    iosBundleId: 'com.example.pettiePetstore',
  );
}