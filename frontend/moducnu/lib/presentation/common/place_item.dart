import 'package:flutter/material.dart';
import 'package:moducnu/domain/model/place.dart';
import 'package:moducnu/presentation/common/map_component.dart'; // Import the Place model
import 'package:get/get.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  final GlobalKey<MapComponentState> mapComponentKey; // 추가된 mapComponentKey

  // Constructor to initialize the properties
  const PlaceItem({
    super.key,
    required this.place,
    required this.mapComponentKey, // key 추가
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Left side: Place Name and Category
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Place Name and Category
                  Row(
                    children: [
                      Text(
                        place.placeName,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        place.category,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  // Address
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 18, color: Colors.red),
                      const SizedBox(width: 4.0),
                      Text(
                        place.alias,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  // Contact
                  Row(
                    children: [
                      const Icon(Icons.phone, size: 18, color: Colors.blue),
                      const SizedBox(width: 4.0),
                      Text(
                        place.contact,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Right side: Right Arrow Icon
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios, size: 20),
              onPressed: () {
                Get.back();
                mapComponentKey.currentState?.focusOnBuilding(place.nodeId);
              },
            ),
          ],
        ),
      ),
    );
  }
}
