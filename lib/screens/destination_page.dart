import 'package:arya_go_user/screens/estimated_fare.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class DestinantionPage extends StatelessWidget {
  const DestinantionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: size.height * 0.185,
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.05,
                  width: size.width,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 0.1, color: Colors.black45),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                width: 1,
                                color: const Color(0xff29d202),
                              ),
                            ),
                            child: Container(
                                decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff29d202),
                            )),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            'Saharsa Bihar 852212',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.gps_fixed,
                        color: Color(0xff29d202),
                        size: 20,
                      )
                    ],
                  ),
                ),
                Container(
                    height: size.height * 0.05,
                    width: size.width,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: Colors.black45),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.radio_button_checked,
                            color: Colors.red,
                            size: 20,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          //isCollapsed: true,
                          hintText: "Enter Destination"),
                    )),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SafeArea(
          child: Stack(
            children: [
              Row(
                children: const [
                  SizedBox(width: 15),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Choose your destination on map',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => EstimatedFare())));
                  },
                  child: Container(
                    height: size.height * 0.055,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4)),
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
