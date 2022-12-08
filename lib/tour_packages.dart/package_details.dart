import 'package:arya_go_user/bottom_sheets/book_tour.dart';
import 'package:arya_go_user/models/package_model.dart';
import 'package:flutter/material.dart';

import '../constants/separator.dart';

class PackageDetails extends StatelessWidget {
  PackageDetails({super.key});

  List<PackageData> packages = packageslist;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Package Details',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.separated(
                    //padding: const EdgeInsets.only(top: 20),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              height: size.height * 0.22,
                              width: size.width,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(width: 0.5)),
                              child: Image.asset(
                                'assets/images/aryago_banner.jpeg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${packages[index].packageName}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Text(
                                  '${packages[index].price}0',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Package ID: ${packages[index].packageId}',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Read T&C',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff466cc4),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.white,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                        builder: ((context) {
                                          return const BookTour();
                                        }));
                                  },
                                  child: Container(
                                    height: size.height * 0.04,
                                    width: size.width * 0.25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.black),
                                    child: const Text(
                                      'Book Tour',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                    separatorBuilder: ((context, index) {
                      return const MySeparator();
                    }),
                    itemCount: packages.length))
          ],
        ));
  }
}
