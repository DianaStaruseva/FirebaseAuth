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
    apiKey: 'AIzaSyDD1EsMq9j3TD7saDZsILNxEoIWOYVzz7M',
    appId: '1:730879444388:android:0aa4d3624002029f5dad31',
    messagingSenderId: '730879444388',
    projectId: 'fir-auth-77824',
    authDomain: 'fir-auth-77824.firebaseapp.com',
    storageBucket: 'fir-auth-77824.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDD1EsMq9j3TD7saDZsILNxEoIWOYVzz7M',
    appId: '1:730879444388:android:0aa4d3624002029f5dad31',
    messagingSenderId: '730879444388',
    projectId: 'fir-auth-77824',
    storageBucket: 'fir-auth-77824.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKAF2rQVOSlANngYIlWxagxT56m6oY8gU',
    appId: '1:730879444388:ios:911dcac5622478685dad31',
    messagingSenderId: '730879444388',
    projectId: 'fir-auth-77824',
    storageBucket: 'fir-auth-77824.appspot.com',
    iosClientId: '730879444388-rkb0fhpbkbbkb0erpafnv4n9v08vifq5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKAF2rQVOSlANngYIlWxagxT56m6oY8gU',
    appId: '1:730879444388:ios:911dcac5622478685dad31',
    messagingSenderId: '730879444388',
    projectId: 'fir-auth-77824',
    storageBucket: 'fir-auth-77824.appspot.com',
    iosClientId: '730879444388-rkb0fhpbkbbkb0erpafnv4n9v08vifq5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuth',
  );
}
