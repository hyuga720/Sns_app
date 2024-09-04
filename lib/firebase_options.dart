
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
    apiKey: 'AIzaSyCFhCjJOn_6AQBYGX51noIxocwGtQWqkxQ',
    appId: '1:357856752835:web:4291ff036c216bcb199e76',
    messagingSenderId: '357856752835',
    projectId: 'sns-app-b244a',
    authDomain: 'sns-app-b244a.firebaseapp.com',
    storageBucket: 'sns-app-b244a.appspot.com',
    measurementId: 'G-M2SBBTM9V1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCY9BqsIdjP99EIOy5_kNujDw8YVUVbjzo',
    appId: '1:357856752835:android:16ddc3b5840ff1d4199e76',
    messagingSenderId: '357856752835',
    projectId: 'sns-app-b244a',
    storageBucket: 'sns-app-b244a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAvf1f8nZmuPKWbZxMFsInVn2AcVcWkkn0',
    appId: '1:357856752835:ios:180b5118b16416f0199e76',
    messagingSenderId: '357856752835',
    projectId: 'sns-app-b244a',
    storageBucket: 'sns-app-b244a.appspot.com',
    iosBundleId: 'com.example.snsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAvf1f8nZmuPKWbZxMFsInVn2AcVcWkkn0',
    appId: '1:357856752835:ios:180b5118b16416f0199e76',
    messagingSenderId: '357856752835',
    projectId: 'sns-app-b244a',
    storageBucket: 'sns-app-b244a.appspot.com',
    iosBundleId: 'com.example.snsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCFhCjJOn_6AQBYGX51noIxocwGtQWqkxQ',
    appId: '1:357856752835:web:a43efdd7dd1da8ec199e76',
    messagingSenderId: '357856752835',
    projectId: 'sns-app-b244a',
    authDomain: 'sns-app-b244a.firebaseapp.com',
    storageBucket: 'sns-app-b244a.appspot.com',
    measurementId: 'G-YQT6ENLH57',
  );

}