import 'package:flutter/material.dart';
import 'package:notificaciones/screens/home_screen.dart';
import 'package:notificaciones/screens/message_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notificaciones/services/push_notification_service.dart';
import 'firebase_options.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await PushNotificationService.init();
  runApp(MyApp());
}


//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'message': (context) => MessageScreen(),
      },

    );
  }




}
