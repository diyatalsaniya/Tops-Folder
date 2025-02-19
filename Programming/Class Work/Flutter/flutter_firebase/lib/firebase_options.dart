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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyBXcTvnky87ojL5zMjo43gXId0Mtw9jFoM',
    appId: '1:424882472491:web:a7bcfa84e8fc6cc4c60c6e',
    messagingSenderId: '424882472491',
    projectId: 'first-flutter-project-ba29f',
    authDomain: 'first-flutter-project-ba29f.firebaseapp.com',
    storageBucket: 'first-flutter-project-ba29f.firebasestorage.app',
    measurementId: 'G-SRD4Z1NPM3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRUm2o0hThMVPBwGeY8nPyVdROMqAI3A4',
    appId: '1:424882472491:android:34ecaf629bd1ff90c60c6e',
    messagingSenderId: '424882472491',
    projectId: 'first-flutter-project-ba29f',
    storageBucket: 'first-flutter-project-ba29f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDesK-WGDYLuptkGNi8HIvsdon3LD6pFu4',
    appId: '1:424882472491:ios:ceeea7f2b28c1a77c60c6e',
    messagingSenderId: '424882472491',
    projectId: 'first-flutter-project-ba29f',
    storageBucket: 'first-flutter-project-ba29f.firebasestorage.app',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDesK-WGDYLuptkGNi8HIvsdon3LD6pFu4',
    appId: '1:424882472491:ios:ceeea7f2b28c1a77c60c6e',
    messagingSenderId: '424882472491',
    projectId: 'first-flutter-project-ba29f',
    storageBucket: 'first-flutter-project-ba29f.firebasestorage.app',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBXcTvnky87ojL5zMjo43gXId0Mtw9jFoM',
    appId: '1:424882472491:web:e57ed83d37a3f5fcc60c6e',
    messagingSenderId: '424882472491',
    projectId: 'first-flutter-project-ba29f',
    authDomain: 'first-flutter-project-ba29f.firebaseapp.com',
    storageBucket: 'first-flutter-project-ba29f.firebasestorage.app',
    measurementId: 'G-V3LXFNM4DC',
  );
}
