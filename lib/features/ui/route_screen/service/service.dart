import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'route_repo.dart';

final routesRepo = Provider((ref) => RoutesRepoImpl(ref));
