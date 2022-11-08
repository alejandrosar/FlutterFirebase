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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBIdS9Z4akjY6ETTJoQNf4cCH9ryouwdQs',
    appId: '1:894867673861:web:b99cacfcb25b0cfe209d6c',
    messagingSenderId: '894867673861',
    projectId: 'phoenix-146715',
    authDomain: 'phoenix-146715.firebaseapp.com',
    storageBucket: 'phoenix-146715.appspot.com',
    measurementId: 'G-LYSB8908JT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQVQMytOgX_8628lCAQPQ6S6OJWoIhvlY',
    appId: '1:894867673861:android:8f10abb78178c12c209d6c',
    messagingSenderId: '894867673861',
    projectId: 'phoenix-146715',
    storageBucket: 'phoenix-146715.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7wWta0HQ683uV81dbMh2djkha459emzg',
    appId: '1:894867673861:ios:b67e0cc770d98a59209d6c',
    messagingSenderId: '894867673861',
    projectId: 'phoenix-146715',
    storageBucket: 'phoenix-146715.appspot.com',
    iosClientId: '894867673861-arduuesk196tstpf40g5s4ktd19rbg7h.apps.googleusercontent.com',
    iosBundleId: 'com.example.notificaciones',
  );
}
