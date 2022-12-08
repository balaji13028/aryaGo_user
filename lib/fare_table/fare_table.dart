import 'package:arya_go_user/constants/separator.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FareTable extends StatelessWidget {
  const FareTable({super.key});

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
                'Fare Table',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarHeight: size.height * 0.12,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.045,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(2)),
                    child: const Text(
                      'Dropping',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: size.height * 0.045,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 0.5)),
                    child: const Text(
                      'Round Trip',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: size.height * 0.045,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 0.5)),
                    child: const Text(
                      'Rental',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'City Ride (0 to 10 km)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                DottedBorder(
                  borderType: BorderType.RRect,
                  color: Colors.black38,
                  radius: const Radius.circular(10),
                  strokeWidth: 1,
                  child: DataTable(
                    columnSpacing: size.height * 0.009,
                    horizontalMargin: 5,
                    columns: const [
                      DataColumn(
                          label: Text('Cabs',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Base Fare',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Per Km',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Time Charge',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Mini Cabs')),
                        DataCell(Text('50')),
                        DataCell(Text('12')),
                        DataCell(Text('120/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Sedan Cabs')),
                        DataCell(Text('50')),
                        DataCell(Text('12')),
                        DataCell(Text('120/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('SUV Cabs')),
                        DataCell(Text('100')),
                        DataCell(Text('16')),
                        DataCell(Text('130/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Premium')),
                        DataCell(Text('100')),
                        DataCell(Text('16')),
                        DataCell(Text('130/hr')),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'City Ride (10 to 100 km)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                DottedBorder(
                  borderType: BorderType.RRect,
                  color: Colors.black38,
                  radius: const Radius.circular(10),
                  strokeWidth: 1,
                  child: DataTable(
                    columnSpacing: size.height * 0.009,
                    horizontalMargin: 5,
                    columns: const [
                      DataColumn(
                          label: Text('Cabs',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Base Fare',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Per Km',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Text('Time Charge',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('Mini Cabs')),
                        DataCell(Text(
                          '50',
                          textAlign: TextAlign.center,
                        )),
                        DataCell(Text('12')),
                        DataCell(Text('120/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Sedan Cabs')),
                        DataCell(Text('50')),
                        DataCell(Text('12')),
                        DataCell(Text('120/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('SUV Cabs')),
                        DataCell(Text('100')),
                        DataCell(Text('16')),
                        DataCell(Text('130/hr')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Premium')),
                        DataCell(Text('100')),
                        DataCell(Text('16')),
                        DataCell(Text('130/hr')),
                      ]),
                    ],
                  ),
                )
              ],
            )));
  }
}
