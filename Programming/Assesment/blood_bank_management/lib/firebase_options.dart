// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDKuU4x2VJqji16l27ecubTQrasRO71MhU',
    appId: '1:331741384085:web:2304ca0eef4a5138223a9c',
    messagingSenderId: '331741384085',
    projectId: 'blood-bank-management-79b21',
    authDomain: 'blood-bank-management-79b21.firebaseapp.com',
    storageBucket: 'blood-bank-management-79b21.firebasestorage.app',
    measurementId: 'G-6MS0Z0698J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArEeUwnKYsqJ0bs_dXV-rHDN2QsU8SpMc',
    appId: '1:331741384085:android:d16aba2e971470c1223a9c',
    messagingSenderId: '331741384085',
    projectId: 'blood-bank-management-79b21',
    storageBucket: 'blood-bank-management-79b21.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKuU4x2VJqji16l27ecubTQrasRO71MhU',
    appId: '1:331741384085:web:0846b07ec12de039223a9c',
    messagingSenderId: '331741384085',
    projectId: 'blood-bank-management-79b21',
    authDomain: 'blood-bank-management-79b21.firebaseapp.com',
    storageBucket: 'blood-bank-management-79b21.firebasestorage.app',
    measurementId: 'G-2XQ881YSM5',
  );
}
