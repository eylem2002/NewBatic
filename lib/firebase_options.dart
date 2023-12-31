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
    apiKey: 'AIzaSyCsYYniikTgWYe7nd0dTtjjnFcDYdwzyQQ',
    appId: '1:558478102376:web:439cf8a86ab42c1a1050dd',
    messagingSenderId: '558478102376',
    projectId: 'batic-3900e',
    authDomain: 'batic-3900e.firebaseapp.com',
    storageBucket: 'batic-3900e.appspot.com',
    measurementId: 'G-HQNBQK631X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQ8WnWiX_v6NsLGbkxi0Om2cerf7NMOO4',
    appId: '1:558478102376:android:5f9b2ff0e32112e21050dd',
    messagingSenderId: '558478102376',
    projectId: 'batic-3900e',
    storageBucket: 'batic-3900e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcIZXelcqn2_lcGIVrlH2zR2Y8erqW3Go',
    appId: '1:558478102376:ios:c1e144196455744d1050dd',
    messagingSenderId: '558478102376',
    projectId: 'batic-3900e',
    storageBucket: 'batic-3900e.appspot.com',
    iosBundleId: 'com.example.newBatic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcIZXelcqn2_lcGIVrlH2zR2Y8erqW3Go',
    appId: '1:558478102376:ios:ef77feebc973fba81050dd',
    messagingSenderId: '558478102376',
    projectId: 'batic-3900e',
    storageBucket: 'batic-3900e.appspot.com',
    iosBundleId: 'com.example.newBatic.RunnerTests',
  );
}

