import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_provider.g.dart';

@riverpod
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef ref) {
  return FirebaseAnalytics.instance;
}

@riverpod
FirebaseAnalyticsObserver firebaseAnalyticsObserver(FirebaseAnalyticsObserverRef ref) {
  return FirebaseAnalyticsObserver(analytics: ref.watch(firebaseAnalyticsProvider));
}