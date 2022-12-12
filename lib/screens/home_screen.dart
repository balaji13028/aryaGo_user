import 'package:arya_go_user/drawers/slide_drawer.dart';
import 'package:arya_go_user/screens/destination_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as LatLng;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> sliderKey = GlobalKey();

  late MapController mapController;

  @override
  void initState() {
    mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: sliderKey,
      drawer: const SlideDrawer(),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                sliderKey.currentState!.openDrawer();
              },
              child: const Icon(Icons.menu, size: 35, color: Colors.black),
            ),
            const Text(
              "AryaGo",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                child: const Icon(Icons.phone, color: Colors.white, size: 25))
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    center: LatLng.LatLng(25.612677, 85.158875),
                    zoom: 9.2,
                  ),
                  nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
                      source: 'OpenStreetMap contributors',
                      onSourceTapped: null,
                    ),
                  ],
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

                      //userAgentPackageName: 'com.example.app',
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const DestinantionPage())));
              },
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.1,
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(blurRadius: 1, color: Colors.grey)
                ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Transform(
                  origin: const Offset(2, 1),
                  transform: Matrix4.rotationZ(13.5),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.navigation,
                    color: Color(0xffFDEB4E),
                    size: 34,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: size.height * 0.35,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(
          children: [
            Container(
              height: size.height * 0.08,
              width: size.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Colors.black),
              child: const Text(
                'Welcome to AryaGo Family',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const DestinantionPage())));
              },
              child: Container(
                height: size.height * 0.06,
                width: size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(blurRadius: 1, color: Colors.black)
                    ],
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 0.5, color: Colors.black),
                    color: Colors.white),
                child: const Text(
                  'Where are you going?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              height: size.height * 0.125,
              width: size.width,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: Colors.black),
              child: Image.asset(
                'assets/images/aryago_banner.jpeg',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
