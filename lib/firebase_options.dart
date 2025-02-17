// This file contains the default FirebaseOptions for each platform.
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCTHWTeSRCs5jYw8ERRHx0NV7xD6tSLP2k',
    appId: '1:43491695327:web:9a8d9d6c9534519819276a',
    messagingSenderId: '43491695327',
    projectId: 'unimoapp-ba1cb',
    authDomain: 'unimoapp-ba1cb.firebaseapp.com',
    storageBucket: 'unimoapp-ba1cb.firebasestorage.app',
    measurementId: 'G-S7T32ZD5DK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5WwWrVIR9uNzgt1MZjjsKZLc_NNqCUzI',
    appId: '1:43491695327:android:c9e4f956563f345319276a',
    messagingSenderId: '43491695327',
    projectId: 'unimoapp-ba1cb',
    storageBucket: 'unimoapp-ba1cb.firebasestorage.app',
  );
}
