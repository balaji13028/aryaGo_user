import 'package:arya_go_user/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart' as LatLng;

class SearchingCab extends StatefulWidget {
  const SearchingCab({super.key});

  @override
  State<SearchingCab> createState() => _SearchingCabState();
}

class _SearchingCabState extends State<SearchingCab> {
  final GlobalKey<ScaffoldState> sliderKey = GlobalKey();

  late MapController mapController;
  bool isesearching = true;
  bool isconfirmed = false;
  bool isstarted = false;

  @override
  void initState() {
    mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          )
        ],
      ),
      bottomSheet: isesearching == true
          ? Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: size.height * 0.36,
              width: size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Please wait for few seconds',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'We are sending your request to nearest driver.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const LinearProgressIndicator(
                    backgroundColor: Color(0xfff2eeee),
                    color: Color(0xffffea5b),
                    minHeight: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isesearching = false;
                            isconfirmed = true;
                            isstarted = false;
                          });
                        },
                        child: Container(
                          height: size.height * 0.18,
                          width: size.width * 0.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.transparent),
                          child: Image.asset(
                            'assets/images/cab_search.jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      height: size.height * 0.055,
                      width: size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Text(
                        'CANCEL RIDE',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : isconfirmed == true
              ? Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  height: size.height * 0.36,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Color(0xffcccccc),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Your ride is confirmed.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'BR01CU4738',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Dzire tour',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Text(
                                      'Santosh Kumar',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Text(
                                      'Rating 4.3',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: size.height * 0.08,
                                      width: size.width * 0.3,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.transparent),
                                      child: Image.asset(
                                        'assets/images/car_1.jpeg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      radius: size.height * 0.045,
                                      backgroundColor: Colors.black,
                                      child: CircleAvatar(
                                        radius: size.height * 0.043,
                                        child: ClipOval(
                                            child: SvgPicture.asset(
                                                'assets/images/profile_img.svg')),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.28,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Cancel ride',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.28,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Support',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isesearching = false;
                                      isconfirmed = false;
                                      isstarted = true;
                                    });
                                  },
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.28,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        'Call Driver',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  height: size.height * 0.36,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Color(0xffcccccc),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Trip started Happy journey',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Your Cab Meter reading is 323346',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'BR01CU4738',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Dzire tour',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Text(
                                      'Santosh Kumar',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Text(
                                      'Rating 4.3',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: size.height * 0.08,
                                      width: size.width * 0.3,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.transparent),
                                      child: Image.asset(
                                        'assets/images/car_1.jpeg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      radius: size.height * 0.045,
                                      backgroundColor: Colors.black,
                                      child: CircleAvatar(
                                        radius: size.height * 0.043,
                                        child: ClipOval(
                                            child: SvgPicture.asset(
                                                'assets/images/profile_img.svg')),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.4,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Support',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isesearching = true;
                                      isconfirmed = false;
                                      isstarted = false;
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                const HomeScreen())));
                                  },
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        'Call Driver',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
    );
  }
}
