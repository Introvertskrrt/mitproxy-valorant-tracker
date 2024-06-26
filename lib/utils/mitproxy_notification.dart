import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MitproxyNotification {
  static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize = const AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings = InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future sendNotification({
    var id = 0, 
    required String title, 
    required String body, 
    var payload, 
    required FlutterLocalNotificationsPlugin fln}) async{
      AndroidNotificationDetails androidPlatformChannelSpecifics = 
      const AndroidNotificationDetails(
        'Flutter Notification',
        'channel_id 6',

        playSound: true,
        //sound: RawResourceAndroidNotificationSound('notification'),
        importance: Importance.max,
        priority: Priority.high,
      );
      var not = NotificationDetails(android: androidPlatformChannelSpecifics);
      await fln.show(0, title, body, not);
  }
  
}