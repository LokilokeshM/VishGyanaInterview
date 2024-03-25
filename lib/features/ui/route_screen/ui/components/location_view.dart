import 'package:flutter/material.dart';
import 'package:interview_app/packages/common/config/config.dart';
import 'package:interview_app/packages/network/app/entity/location_response.dart';

class LocationViewWidget extends StatelessWidget {
  const LocationViewWidget(
      {super.key, required this.startLoc, required this.endLoc});
  final Northeast? startLoc;
  final Northeast? endLoc;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: ListTile(
                title: const Text(
                  "Start Location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${startLoc?.lat} - ${startLoc?.lng}"))),
        Expanded(
            child: ListTile(
                title: const Text(
                  "End Location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${endLoc?.lat} - ${endLoc?.lng}"))),
      ],
    );
  }
}
