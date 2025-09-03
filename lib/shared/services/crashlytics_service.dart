import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class CrashlyticsService {
  CrashlyticsService(this._crashlytics);

  final FirebaseCrashlytics _crashlytics;

  Future<void> recordError(dynamic exception, StackTrace stack) {
    return _crashlytics.recordError(exception, stack);
  }
}
