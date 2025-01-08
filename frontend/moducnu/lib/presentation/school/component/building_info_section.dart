import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:moducnu/domain/model/building.dart';
import 'package:moducnu/domain/model/place.dart';
import 'package:moducnu/presentation/common/custom_search_bar.dart';
import 'package:moducnu/presentation/school/component/school_search_bar.dart';
import 'package:moducnu/presentation/school/component/section_title.dart';
import 'package:moducnu/presentation/school/component/building_detail.dart';
import 'package:moducnu/presentation/theme/color.dart';

import '../../../di/place_di.dart';
import 'building_info_viewmodel.dart';


class BuildingInfoSection extends StatelessWidget {
  const BuildingInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: '👋 교내 건물 편의시설'),
          SizedBox(height: 10.0),
          SchoolSearchBar(hasShadow: false, ),
          SizedBox(height: 10.0),
          BuildingList(),
        ],
      ),
    );
  }
}


class BuildingList extends StatelessWidget {
  const BuildingList({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<BuildingInfoViewModel>();
    viewModel.init();

    return Obx(() {
      if (viewModel.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (viewModel.errorMessage.isNotEmpty) {
        return Column(
          children: [
            const SizedBox(height: 50),
            Center(child: Text(viewModel.errorMessage.value)),
          ],
        );
      }

      if (viewModel.buildings.isEmpty) {
        return const Center(child: Text('건물 데이터를 찾을 수 없습니다.'));
      }
      if (viewModel.filteredBuildings.isEmpty) {
        return const Center(child: Text('검색 결과가 없습니다.'));
      }

      // 그게 아니면 전체 빌딩 데이터 표시
      final pageNumbers = (viewModel.filteredBuildings.length / 4).ceil();
      final groupSize = (viewModel.filteredBuildings.length / pageNumbers).ceil();
      final List<List<Place>> buildingPages = List.generate(
        pageNumbers,
            (index) {
          final start = index * groupSize;
          final end = (start + groupSize).clamp(0, viewModel.filteredBuildings.length);
          return viewModel.filteredBuildings.sublist(start, end);
        },
      );

      return SizedBox(
        height: 320, // 높이 제한 설정
        child: PageView.builder(
          itemCount: buildingPages.length,
          itemBuilder: (context, pageIndex) {
            final buildingsForPage = buildingPages[pageIndex];
            return Column(
              children: buildingsForPage.map((building) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: BuildingCard(place: building),
                );
              }).toList(),
            );
          },
        ),
      );
    });
  }
}


class BuildingCard extends StatelessWidget {
  final Place place;

  const BuildingCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0), // 아이템 간 간격
      decoration: BoxDecoration(
        color: kInfoBackgroundColor,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // 그림자 색상
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center( // 내용물을 수직으로 가운데 정렬
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0), // 패딩 조정
          title: Text(
            place.placeName,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16.0),
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min, // Row가 최소 크기만 차지하도록 설정
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 양 끝 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 수직 가운데 정렬
            children: [
              Text(
                '도면보기',
                style: TextStyle(color: Colors.grey, fontSize: 12.0),
              ),
              SizedBox(width: 4), // 텍스트와 아이콘 사이 간격
              Icon(Icons.arrow_circle_right, color: Colors.orange),
            ],
          ),
          onTap: () {
             Navigator.push(
             context,
             MaterialPageRoute(
             builder: (context) => BuildingDetailPage(buildingId: place.id!!),
              ),
            );
            // Handle navigation or click event
          },
        ),
      ),
    );
  }
}