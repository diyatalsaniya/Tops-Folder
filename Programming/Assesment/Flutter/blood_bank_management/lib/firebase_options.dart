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
    apiKey: 'AIzaSyA5MtL4YbuW2VvGvRXJb2SV5fak9pU7TgE',
    appId: '1:388208686683:web:3940f25573dc8569a7317e',
    messagingSenderId: '388208686683',
    projectId: 'blood-bank-management-a9099',
    authDomain: 'blood-bank-management-a9099.firebaseapp.com',
    storageBucket: 'blood-bank-management-a9099.firebasestorage.app',
    measurementId: 'G-1JE2EC977D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDKzjWbUs95Ec1Q36zirTdFaAcmJ97610',
    appId: '1:388208686683:android:4e4d649f3bf4ea24a7317e',
    messagingSenderId: '388208686683',
    projectId: 'blood-bank-management-a9099',
    storageBucket: 'blood-bank-management-a9099.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA5MtL4YbuW2VvGvRXJb2SV5fak9pU7TgE',
    appId: '1:388208686683:web:cd0edc464d2b4d46a7317e',
    messagingSenderId: '388208686683',
    projectId: 'blood-bank-management-a9099',
    authDomain: 'blood-bank-management-a9099.firebaseapp.com',
    storageBucket: 'blood-bank-management-a9099.firebasestorage.app',
    measurementId: 'G-CY3TDG5F4D',
  );
}
