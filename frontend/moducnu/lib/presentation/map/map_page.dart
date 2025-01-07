import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moducnu/presentation/map/search_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moducnu/data/remote/api/disabled_restroom/disabled_restroom_api.dart';
import 'package:moducnu/data/remote/api/building/building_api.dart';
import 'package:moducnu/data/remote/api/navigation/navigation_api.dart';
import 'package:moducnu/data/remote/api/ramp/ramp_api.dart';
import 'package:moducnu/presentation/common/category_list.dart';
import 'package:moducnu/presentation/common/custom_search_bar.dart';
import 'package:moducnu/presentation/common/map_component.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late BuildingApi _buildingApi;
  late NavigationApi _navigationApi;
  late RampApi _rampApi;
  late DisabledRestroomApi _disabledRestroomApi;
  late String _baseUrl;
  late String _accessToken;

  final GlobalKey<MapComponentState> _mapComponentKey =
      GlobalKey<MapComponentState>();

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    _baseUrl = dotenv.env['SERVER_URL'] ?? ""; // .env에서 타일 서버 URL 가져오기
    _accessToken =
        dotenv.env['MAPBOX_ACCESS_TOKEN'] ?? ""; // .env에서 Access Token 가져오기
    _buildingApi = BuildingApi(dio, baseUrl: _baseUrl); // 사용자 API 설정
    _navigationApi = NavigationApi(dio, baseUrl: _baseUrl); // 사용자 API 설정
    _rampApi = RampApi(dio, baseUrl: _baseUrl); // 사용자 API 설정
    _disabledRestroomApi =
        DisabledRestroomApi(dio, baseUrl: _baseUrl); // 사용자 API 설정
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map 위젯
          MapComponent(
              key: _mapComponentKey,
              buildingApi: _buildingApi,
              navigationApi: _navigationApi,
              baseUrl: _baseUrl,
              accessToken: _accessToken,
              main: true),
          // 검색바
          Positioned(
            top: 70.0, // 화면 상단에서 50px 떨어짐
            left: 4.0, // 화면 좌측에서 16px 떨어짐
            right: 4.0, // 화면 우측에서 16px 떨어짐
            child: Column(
              children: [
                CustomSearchBar(
                    hasShadow: true,
                    readOnly: true,
                    onTap: () {
                      Get.to(
                          () => SearchPage(mapComponentKey: _mapComponentKey));
                    }),
                const SizedBox(height: 12.0),
                CategoryList(
                  buildingApi: _buildingApi,
                  rampApi: _rampApi,
                  disabledRestroomApi: _disabledRestroomApi,
                  navigationApi: _navigationApi,
                  onDisplayMarkers: (coordinates, category) {
                    _mapComponentKey.currentState
                        ?.addMarkers(coordinates, category);
                  },
                  onClearMarkers: () {
                    _mapComponentKey.currentState?.clearMarkers();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
