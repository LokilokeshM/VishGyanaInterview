import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/features/ui/route_screen/app/application.dart';
import 'package:interview_app/features/ui/route_screen/ui/widget/location_card.dart';

class RouteScreen extends ConsumerWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Routes'),
        ),
        body: ref.watch(routesProvider).when(
            data: (data) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: data.routes!.length,
                itemBuilder: (item, index) {
                  final route = data.routes![index];
                  return LocationCard(route: route);
                },
              );
            },
            error: (e, st) => const Center(
                  child: Text("No Record Found"),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
