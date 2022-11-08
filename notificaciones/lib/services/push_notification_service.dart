import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../firebase_options.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future<void> _backgroundHandler(RemoteMessage message) async {
    print('[PushNotificationService] backgroundHandler: ${message.messageId}');
    print('[PushNotificationService] backgroundHandler: ${message}');
  }

  static Future<void> _onMessageHandler(RemoteMessage message) async {
    print('[PushNotificationService] onMessageHandler: ${message.messageId}');
    print('[PushNotificationService] onMessageHandler: ${message.data}');
    print(
        '[PushNotificationService] onMessageHandler: ${message.notification?.body}');
  }

  static Future<void> _onMessageOpenApp(RemoteMessage message) async {
    print('[PushNotificationService] onMessageOpenApp: ${message.messageId}');
    print('[PushNotificationService] onMessageOpenApp: ${message}');
  }

  static Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    token = await FirebaseMessaging.instance.getToken();
    print('Token: $token');

    //Handlers
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }
}
