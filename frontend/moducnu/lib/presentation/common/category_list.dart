import 'package:flutter/material.dart';
import 'package:moducnu/data/remote/api/building/building_api.dart';
import 'package:moducnu/data/remote/api/disabled_restroom/disabled_restroom_api.dart';
import 'package:moducnu/data/remote/api/navigation/navigation_api.dart';
import 'package:moducnu/data/remote/api/ramp/ramp_api.dart';
import 'package:moducnu/data/remote/dto/navigation/navigation_dto.dart';
import 'category_chip.dart';

class CategoryList extends StatefulWidget {
  final RampApi rampApi;
  final DisabledRestroomApi disabledRestroomApi;
  final NavigationApi navigationApi;
  final BuildingApi buildingApi;
  final Function(List<dynamic>, String) onDisplayMarkers; // ✅ 마커 추가 콜백
  final Function() onClearMarkers;

  const CategoryList({
    Key? key,
    required this.rampApi,
    required this.disabledRestroomApi,
    required this.navigationApi,
    required this.buildingApi,
    required this.onDisplayMarkers, // ✅ 콜백 추가
    required this.onClearMarkers,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int? activeIndex;

  final List<String> categories = ['화장실', '경사로', '편의점', '휴게실'];

  /// ✅ nodeId를 기반으로 경도, 위도를 가져오는 함수
  Future<List<CoordinateDto>> _fetchCoordinatesByNodeIds(
      List<String> nodeIds) async {
    List<CoordinateDto> coordinates = [];
    for (var nodeId in nodeIds) {
      try {
        final coordinate =
            await widget.navigationApi.getNodeCoordinates(nodeId.toString());
        coordinates.add(coordinate);
      } catch (e) {
        print('Failed to fetch coordinates for nodeId $nodeId: $e');
      }
    }
    return coordinates;
  }

  /// ✅ 카테고리 클릭 시 마커 추가를 위한 데이터 요청 로직
  Future<void> _fetchMarkers(String category) async {
    List<String> nodeIds = [];
    List<CoordinateDto> coordinates = [];

    try {
      if (category == '화장실') {
        final restrooms = await widget.disabledRestroomApi.getAllRestrooms();
        widget.onDisplayMarkers(restrooms, "화장실");
      } else if (category == '경사로') {
        final ramps = await widget.rampApi.getAllRamps();
        widget.onDisplayMarkers(ramps, '경사로');
      } else if (category == '편의점') {
        final buildings = await widget.buildingApi.getBuildingTags("편의점");
        widget.onDisplayMarkers(buildings, '편의점');
      } else if (category == '휴게실') {
        final buildings = await widget.buildingApi.getBuildingTags("휴게실");
        widget.onDisplayMarkers(buildings, '휴게실');
      }
    } catch (e) {
      print('Failed to fetch markers for $category: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 16),
          MyPlaceCategoryChip(
              isActive: activeIndex == -1,
              onTap: () {
                if (activeIndex == -1) {
                  widget.onClearMarkers();
                }
                setState(() {
                  activeIndex = activeIndex == -1 ? null : -1;
                });
              },
              onDisplayMarkers: widget.onDisplayMarkers),
          const SizedBox(width: 6),
          ...List.generate(categories.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: CategoryChip(
                label: categories[index],
                isActive: activeIndex == index,
                onTap: () async {
                  if (activeIndex == index) {
                    widget.onClearMarkers();
                  } else {
                    await _fetchMarkers(categories[index]);
                  }
                  setState(() {
                    activeIndex = activeIndex == index ? null : index;
                  });
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
