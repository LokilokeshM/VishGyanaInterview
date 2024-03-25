import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/packages/network/app/entity/location_response.dart';
import 'routes_notifier.dart';

final routesProvider =
    StateNotifierProvider<RoutesNotifier, AsyncValue<LocationResponse>>(
        (ref) => RoutesNotifier(ref));
