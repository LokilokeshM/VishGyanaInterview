import 'package:flutter/material.dart';
import 'package:interview_app/features/ui/route_screen/ui/components/location_view.dart';
import 'package:interview_app/packages/common/config/config.dart';
import 'package:interview_app/packages/network/app/entity/location_response.dart'
    as r;

class LocationCard extends StatelessWidget {
  const LocationCard({super.key, required this.route});
  final r.Route route;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bound",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                  child: ListTile(
                      title: const Text(
                        "North East",
                      ),
                      subtitle: Text(
                          "${route.bounds?.northeast?.lat} - ${route.bounds?.northeast?.lng}"))),
              Expanded(
                  child: ListTile(
                      title: const Text("South West"),
                      subtitle: Text(
                          "${route.bounds?.southwest?.lat} - ${route.bounds?.southwest?.lng}"))),
            ],
          ),
          ExpansionTile(
            title: const Text(
              "Legs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            children: [
              ...route.legs!.map((e) {
                return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: grey),
                        color: white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(
                                "Distance: ${e.distance?.text}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                              Expanded(
                                  child: Text(
                                "Duration: ${e.duration?.text}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          ListTile(
                            title: const Text(
                              "Start Address",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(e.startAddress!),
                          ),
                          ListTile(
                            title: const Text(
                              "End Address",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(e.endAddress!),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          LocationViewWidget(
                              startLoc: e.startLocation, endLoc: e.endLocation),
                          ExpansionTile(
                              title: const Text(
                                "Steps",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              children: [
                                ...e.steps!.map((steps) => LocationViewWidget(
                                      startLoc: steps.startLocation,
                                      endLoc: steps.endLocation,
                                    ))
                              ])
                        ]));
              })
            ],
          )
        ],
      ),
    );
  }
}
