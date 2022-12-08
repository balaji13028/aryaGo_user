import 'package:arya_go_user/models/towns_model.dart';
import 'package:arya_go_user/tour_packages.dart/package_details.dart';
import 'package:flutter/material.dart';

import '../constants/separator.dart';

class TourPackage extends StatelessWidget {
  TourPackage({super.key});
  List<HomeTownsData> hometowns = homeTownslist;

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
              'Tour Package',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 15, horizontal: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                'Please Select Your Home Town',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: MySeparator(),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: hometowns.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => PackageDetails())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '${hometowns[index].townName}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
