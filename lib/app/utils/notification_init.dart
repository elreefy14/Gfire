import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationInit {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    debugPrint("FCMMessage");
    await _showLocalNotification(
      title: message.notification?.title ?? 'New Message',
      body: message.notification?.body ?? '',
    );
  }

  Future<void> _showLocalNotification({
    required String title,
    required String body,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'basic_channel',
      'Basic Notifications',
      channelDescription: 'Notification channel',
      importance: Importance.high,
      priority: Priority.high,
      color: Color.fromARGB(255, 209, 104, 39),
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await _flutterLocalNotificationsPlugin.show(
      DateTime.now().millisecondsSinceEpoch.remainder(100000),
      title,
      body,
      platformChannelSpecifics,
    );
  }

  Future<void> setupNotifications() async {
    try {
      // Initialize local notifications
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/ic_launcher');

      const InitializationSettings initializationSettings =
          InitializationSettings(android: initializationSettingsAndroid);

      await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

      // Create notification channel for Android
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'basic_channel',
        'Basic Notifications',
        description: 'Notification channel',
        importance: Importance.high,
        playSound: true,
        enableVibration: true,
        showBadge: true,
      );

      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      // Request permission for notifications
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        debugPrint('User granted permission');

        await Future.delayed(Duration(seconds: 1));
        // Get FCM token for debugging (optional)
        String? token = await messaging.getToken();
        debugPrint("FCM Token: $token");

        // Set up FCM background message handler
        FirebaseMessaging.onBackgroundMessage(
            _firebaseMessagingBackgroundHandler);
        // Handle foreground notifications
        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
          _showLocalNotification(
            title: message.notification?.title ?? 'New Message',
            body: message.notification?.body ?? '',
          );
        });
      } else {
        debugPrint('User declined or has not granted permission');
      }
    } on Exception catch (exception) {
      debugPrint("FCM Error: $exception");
    }
  }
}
