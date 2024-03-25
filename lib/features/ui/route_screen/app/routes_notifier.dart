import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/packages/network/app/entity/location_response.dart';

import '../service/service.dart';

class RoutesNotifier extends StateNotifier<AsyncValue<LocationResponse>> {
  RoutesNotifier(this.ref) : super(const AsyncValue.loading()) {
    getRoutes();
  }
  Ref ref;

  LocationResponse? data;
  Future<void> getRoutes() async {
    try {
      state = const AsyncValue.loading();
      data = await ref.read(routesRepo).getRoutes();
      if (data != null) {
        state = AsyncValue.data(data!);
      }
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
