import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService(this._analytics);

  final FirebaseAnalytics _analytics;

  Future<void> logEvent(String name, [Map<String, Object>? params]) {
  return _analytics.logEvent(name: name, parameters: params);
}

}
